#include "Network.hpp"
/** constructor of Network class
 */
Network::Network(){
	//clear the vector before utilization
	for(auto& elm : network){
		delete elm;
		elm = nullptr; 
	}
	

	//complete the vector with new Neurons
	for(int i(0); i < NE; ++i){
		network.push_back(new Neuron(EXCITATORY));
	}
	
	for(int i(0); i < NI; ++i){
		network.push_back(new Neuron(INHIBITORY));
	}
	createRandomConnections();
	
}
/**Constructor when we want to construct a Network with 2 Neurons
 */
Network::Network(Neuron* n1, Neuron* n2){
	network.push_back(n1);
	network.push_back(n2);
	n1->addTarget(1);
}

/** destructor of Network class
 * need to remove all the pointers
 */
Network::~Network(){
	for (auto& elm : network){
		delete elm;
		elm = nullptr; 
	}
}

/**
 * This method updates our network
 * @param time : time of the simulation 
 * @param intensity : the external intensitsy of the current
 */
void Network::update(int time, double intensity){
	//We need to update the network by going through all the Neurons 
	//and control that they are connected or not
	for(auto& neuron : network){
		assert(neuron != nullptr);
		if(neuron->getEtat()){
			for(auto connect : neuron->getTarget()){
				network[connect]->ReceiveMessage(neuron);
			}
		}
	}
	//we update all the neurons after updating all the buffers
	for(auto& neuron : network){
		neuron->updateStatePoisson(time,intensity);
	}
}


/** 
 * to choose random numbers (connexion number) between two bounds
 * and push them into the vector of targets for each neurons
 */ 
void Network::createRandomConnections(){
	std::default_random_engine randomGenerator; 
    std::uniform_int_distribution<int> disNeuron(0, NE-1);
    std::uniform_int_distribution<int> disINeuron(NE,N-1);

	for(size_t j(0); j< network.size(); ++j){
		for(int i(0); i< C; ++i){
			int n(0);
			if(i<CE){
				n = disNeuron(randomGenerator);
				network[n]->addTarget(j);
			}else{
				n = disINeuron(randomGenerator);
				network[n]->addTarget(j);
			}
		}
	}
}
	
/**
@return the number of connexions there are in all our Network
 */
int Network::nbConnexion(){
	int c(0);
	for (size_t i(0); i< network.size(); ++i){
		c += (int)network[i]->getTarget().size();
	}
	return c;
}

/** 
 * to make a simulation of all the network 
 * @param time_simul : wanted simulation time 
 * @param i_ext : external current during the simulation
 */
void Network::simulationLoopNetwork(int time_simul, double i_ext){
	int time(T_START);
	while(time <= time_simul){
		update(time, i_ext);
		time += DT;
	}
}

/**
 * use to create a file with all our spikes time
 */
void Network::createFile(){
//the file where our time are stored
	std::ofstream fichier;
	std::string nom_de_fichier("../spikes.gdf");
	fichier.open(nom_de_fichier.c_str());

	for(size_t i(0) ; i < network.size(); ++i){
		for (auto spiketime : network[i]->getTime()){
			fichier << spiketime << '\t' << i << '\n';
		}
	}
	fichier.close();
}

