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
/** destructor of Network class
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
	for(auto& neuron : network){
		for(auto connect : neuron->getTarget()){
			neuron->ifReceiveMessage(network[connect]);
		}
	}
	//we update all the neurons after updating all the buffers
	for(auto& neuron : network){
		neuron->updateStatePoisson(time, intensity);
	}
}


/** 
 * to choose random numbers (connexion number) between two borns without taking himself 
 * to prevent the same neuron two be connect with himself
 * @param a : lowest born
 * @param b : greatest born
 * @param connexion : number of random numbers wanted
 * @param x : number of the neuron to prevent to be connect with himself
 * @return a vector<int> with all the choosen random numbers
 */ 
std::vector<int> Network::chooseRandomly(int a, int b, int connexion, int x){
	static std::default_random_engine randomGenerator; 
    static std::uniform_int_distribution<int> disNeuron(a, b);
    std::vector<int> connect;
    connect.clear(); //make sure ther is nothing inside
	int i(0);
	do{
		int aleatory(0);
		aleatory = disNeuron(randomGenerator);
		if(aleatory != x){
			connect.push_back(aleatory);
			++i;
		}
	} while (i < connexion);
	
	return connect;
   
}
/**
@return the number of connexions there are in all our Network
 */
int Network::nbConnexion(){
	int c;
	for (size_t i(0); i< network.size(); ++i){
		c += (int)network[i]->getTarget().size();
	}
	return c;
}

void Network::simulationLoopNetwork(int time_simul, double i_ext){
	int time(T_START);
	while(time <= time_simul){
		update(time, i_ext);
		time += DT;
	}
}

/**
 * this function create exactly CE and CI connexions for all Neurons.
 * It add targets in the vector of all the Neurons
 */
void Network::createConnexions(){
	std::vector<int> indices;
	for(size_t i(0); i < network.size(); ++i){
		indices = chooseRandomly(0,NE,CE,i);
		for (auto elm : indices){
			network[i]->addTarget(elm);
		}
		indices.clear();
		indices=chooseRandomly(NE,NE+NI, CI, i);
		for(auto elm : indices){
			network[i]->addTarget(elm);
		}
		indices.clear();
	}
}

/**
 * use to create a file with all our spikes time
 */
void Network::createFile(std::ofstream& fichier){
//the file where our time are stored

	for(size_t i(0) ; i < network.size(); ++i){
		for (auto spiketime : network[i]->getTime()){
			fichier << spiketime << '\t' << i << '\n';
		}
	}
	fichier.close();
}
