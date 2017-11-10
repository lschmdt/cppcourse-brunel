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

	createConnexions();
	
}
/**Constructor when we want to construct a Network with 2 Neurons
 */
Network::Network(Neuron* n1, Neuron* n2){
	network.push_back(n1);
	network.push_back(n2);
	n1->addTarget(1);
}

/**To update two neuons without poisson
 */
void Network::updateTwo(int time, double intensity){
	for(auto neuron : network){
		for(auto connect : neuron->getTarget()){
			neuron->ifReceiveMessage(network[connect]);
		}
	}
	//we update all the neurons after updating all the buffers
	for(auto neuron : network){
		neuron->updateState(time, intensity);
	}
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
	//We need to update the network by updating all the Neurons 
	//and control that they are connected or not
	for(auto neuron : network){
		for(auto connect : neuron->getTarget()){
			neuron->ifReceiveMessage(network[connect]);
		}
	}
	//we update all the neurons after updating all the buffers
	for(auto neuron : network){
		neuron->updateStatePoisson(time, intensity);
	}
}


/** 
 * to choose random numbers (connexion number) between two bounds without taking himself 
 * @return a vector of random number which represents our indices of connections
 */ 
std::vector<int> Network::chooseRandomly(){
	std::default_random_engine randomGenerator; 
    std::uniform_int_distribution<int> disNeuron(0, NE);
    std::uniform_int_distribution<int> disINeuron(NE+1,N);
    std::vector<int> connect;

    connect.clear(); //make sure ther is nothing inside
	for(int i(0); i< C; ++i){
		int n(0);
		if(i<CE){
			n = disNeuron(randomGenerator);
		}else{
			n = disINeuron(randomGenerator);
		}
		connect.push_back(n);
	}
	assert(connect.size() == C);
	
	return connect;
   
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
 * this function just keep the vector of random number and add it for one neuron
 * It add targets in the vector of all the Neurons
 */
void Network::createConnexions(){
	std::vector<int> indices;
	for(size_t i(0); i < network.size(); ++i){
		indices = chooseRandomly();
		for (auto elm : indices){
			network[i]->addTarget(elm);
		}
		indices.clear();
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

