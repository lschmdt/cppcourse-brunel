#include "Neuron.hpp"
/**Neuron's constructor
 */
Neuron::Neuron(Type x) : etat(false), clock(0), refrac_time(0), membrane_pot(POTENTIEL_RESET),
number_spikes(0), type(x), buffer({0})

{
	time_spikes.clear();
	targets.clear();
}
/** Neuron's destructor
 */
Neuron::~Neuron() {}

/** getter
 * @return le potentiel de la membrane
 */
double Neuron::getPotential() const
{ 
	return membrane_pot; 
}

/** getter
 * @return le nombre de spike
 */
int Neuron::getNumberSpikes() const
{ 
	return number_spikes; 
}

/**
 * @return retourne le temps
 */
std::vector<double> Neuron::getTime() const
{ 
	return time_spikes; 
}

/**setter du buffer
 * @param i : for the index of the vector
 * @param potential : potential to add to the buffer[i]
 */
void Neuron::setBuffer(int i, double potential){
	buffer[i] += potential;
}

/**
 * to test if a Neuron is refractory or not
 * @return true if it is and false if not 
 */
bool Neuron::isRefractory(){
	return refrac_time != 0;
}

/**
 * @return si le neuron spike ou non
 */
bool Neuron::getEtat() const{
	return etat;
}

/**
 * @return the type of the neuron (excitatory or inhibitory)
 */
Type Neuron::getType() const{
	return type;
}

/**update the potential of the neuron. It controls if it is refractory 
 * or not and if it reachs a spike potential or not.
 * @param dt : the time interval
 * @param intensity : the external intensity
 */
void Neuron::updateState(int time, double intensity){ 
	
	etat = false;
	//si la membrane a un potentiel trop élevé
	if(membrane_pot >= POTENTIEL_MAX){
		membrane_pot = POTENTIEL_RESET;
		time_spikes.push_back(time);
		++number_spikes;
		refrac_time = REFRAC_TIME;
		etat = true;
	}	
	//si c'est dans le temps réfractaire
	if (isRefractory())
	{
		membrane_pot = POTENTIEL_RESET;
		refrac_time -= DT;
		return;
	}
	
	/*si le buffer de son pas de temps clock contient un potentiel 
	car il a recu un message d'un autre synapse
	rajouter la constante J a son potentiel*/
	if (buffer[clock%(int)buffer.size()] != 0){
		membrane_pot += buffer[clock%(int)buffer.size()];
		std::cout << "buffer : " << buffer[clock%(int)buffer.size()] << std::endl;
		buffer[clock%(int)buffer.size()] = 0;
	}
	/*double c;
	for (auto elm : buffer){
		c += elm;
	}
	std::cout << " Total : " << c << std::endl;*/
		
	// calcul de la membrane en général
	membrane_pot = exp(-REAL_TIME/TAU)*membrane_pot + intensity*R*(1.0-exp(-REAL_TIME/TAU));
	
	clock += DT;

}

/**this method is useful to give a potential when two 
 * neurons are connected. if the neuron who send the message (n) is
 * Excitatory he send a JE and if it is an inhibitory it sends JI
 * @param n :the sending neuron
 */
void Neuron::ifReceiveMessage(Neuron* n){
	int J;
	if (n->getEtat() == true){
		if(n->getType()== EXCITATORY){
			J=JE;
		}else{
			J=JI;
		}
		setBuffer(((int)(clock + (DELAY/REAL_TIME))%(int)buffer.size()), J);
	}
}
	
/**make a Simulation loop for a given time. It helps for the test
 */	
void Neuron::simulationLoopNeuron(int time_simul, int i_ext){
	int time(T_START);
	while(time <= time_simul){
		updateState(time, i_ext);
		time += DT;
	}
}	

/** to add a connexion with an other Neuron
 */
void Neuron::addTarget(int i){
	targets.push_back(i);
}

/** @return the vector of target that represent the connexions
 */
std::vector<int> Neuron::getTarget() const{
	return targets;
}

/** 
 * @brief : update the neuron with external background noise
 * @param i_ext : external current
 * @param t : time of the simulation
 */
void Neuron::updateStatePoisson(int t, int i_ext){
	updateState(t, i_ext);
	if (not isRefractory()){
		//no need to add it to he buffer because there is no need of
		//buffer time
		//static std::default_random_engine rd;
		static std::random_device rd;
		static std::mt19937 gen(rd());
		static std::poisson_distribution<> disExternal(NU_EXT);
		
		membrane_pot += disExternal(rd)*JE;
	}
	
}
