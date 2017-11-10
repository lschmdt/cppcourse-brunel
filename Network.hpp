#pragma once

#include <iostream>
#include <cmath>
#include <array>
#include <vector>
#include <list>
#include <memory>
#include <random>
#include <fstream>
#include <cassert>
#include "Constant.hpp"
#include "Neuron.hpp"

class Network {
	public:
	Network();
	Network(Neuron* n1, Neuron* n2);
	~Network();
	
	int nbConnexion();
	void createConnexions();
	
	void update(int time, double intensity);
	
	void updateTwo(int time, double intensity);
	
	/*std::vector<int>*/ void chooseRandomly();

	void simulationLoopNetwork(int time, double i_ext);
	
	void createFile();
	
	private:
	std::vector<Neuron*> network; // neurons that are on the network
};
