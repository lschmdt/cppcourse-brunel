#include "Neuron.hpp"
/**Neuron's constructor
 */
Neuron::Neuron(Type x) : etat(false), clock(0), refrac_time(0), membrane_pot(POTENTIEL_RESET),
number_spikes(0), type(x)
{
	time_spikes.clear();
	targets.clear();
	for(size_t i(0); i< buffer.size(); ++i){
		buffer[i] = 0.0;
	}
}
/** Neuron's destructor
 */
Neuron::~Neuron() {}

/** getter
 * @return the membrane potential
 */
double Neuron::getPotential() const
{ 
	return membrane_pot; 
}

/** getter
 * @return the number of spikes
 */
int Neuron::getNumberSpikes() const
{ 
	return number_spikes; 
}

/**
 * @return return the time
 */
const std::vector<double>& Neuron::getTime() const
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

std::array<double,BUFFER_SIZE> Neuron::getBuffer(){
	return buffer;
}

/**
 * to test if a Neuron is refractory or not
 * @return true if it is and false if not 
 */
bool Neuron::isRefractory(){
	return refrac_time != 0;
}

/**
 * @return if the neuron spikes or not
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
	int indice(clock%BUFFER_SIZE);
	assert(indice <= BUFFER_SIZE);
	
	//if the membrane potentiel is more then potentiel max
	if(membrane_pot > POTENTIEL_MAX){
		membrane_pot = POTENTIEL_RESET;
		time_spikes.push_back(time);
		++number_spikes;
		refrac_time = REFRAC_TIME;
		etat = true;
	}	
	//if it is refractory, it has a refractory time before updating the potential
	if (refrac_time !=0)
	{
		membrane_pot = POTENTIEL_RESET;
		refrac_time -= DT;
		//the buffer need to be empty because this message will never arrive to destination
		buffer[indice] = 0.0; 
		return;
	}
	
	//calculus of the membrane
	membrane_pot = CONSTANTE_1*membrane_pot + intensity*CONSTANTE_2;

	/*if the buffer contains a potentiel in its step time because the neuron receives 
	 * a message from another synapse then add it to the membrane potential
	 */
	if (buffer[indice] != 0.0){
		membrane_pot += buffer[indice];
	}
	
	buffer[indice] = 0.0;
	clock += DT;
}

/**this method is useful to give a potential when two 
 * neurons are connected. if the neuron who send the message (n) is
 * Excitatory he send a JE and if it is an inhibitory it sends JI
 * @param n :the sending neuron
 */
void Neuron::ifReceiveMessage(Neuron* n){
	assert(n != nullptr);
	if (n->getEtat() == true){
		//assert(((clock + (int)(DELAY/REAL_TIME))%BUFFER_SIZE) < BUFFER_SIZE);
		buffer[(clock + (int)(DELAY))%BUFFER_SIZE] += n->chooseJ();
	}
}

double Neuron::chooseJ(){
	double j(0.0);
	if(type == EXCITATORY){
		j=JE;
	}else{
		j=JI;
	}
	return j;
}	
/**make a Simulation loop for a given time. It helps for the test
 * @param time_simul : time for our simulation
 * @param i_ext : external current
 */	
void Neuron::simulationLoopNeuron(int time_simul, double i_ext){
	int time(T_START);
	while(time <= time_simul){
		updateState(time, i_ext);
		time += DT;
	}
}	

/** to add a connexion with an other Neuron
 * @param i : indice of connected neurons
 */
void Neuron::addTarget(int i){
	targets.push_back(i);
}

/** @return the vector of target that represent the connexions
 */
const std::vector<int>& Neuron::getTarget() const{
	return targets;
}

/** 
 * @brief : update the neuron with external background noise
 * @param i_ext : external current
 * @param t : time of the simulation
 */
void Neuron::updateStatePoisson(int t, double i_ext){
	updateState(t, i_ext);
	if (refrac_time <= 0){
		//no need to add it to he buffer because there is no need of
		//buffer time
		static std::random_device rd;
		static std::mt19937 gen(rd());
		static std::poisson_distribution<> disExternal(NU_EXT);
		membrane_pot += disExternal(rd)*J;
	}
	
}
