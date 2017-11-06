#pragma once

#include <iostream>
#include <cmath>
#include <array>
#include <vector>
#include <list>
#include <memory>
#include <random>
#include <fstream>
#include "Constant.hpp"
#include <cassert>
#include "Neuron.hpp"

class Network {
	public:
	Network();
	~Network();
	
	int nbConnexion();
	void createConnexions();
	const std::vector<Neuron*>& getNetwork();
	
	void update(int time, double intensity);
	std::vector<int> chooseRandomly(int a, int b, int connexion, Type type);
	void simulationLoopNetwork(int time, double i_ext);
	void createFile();
	
	private:
	std::vector<Neuron*> network; // neurons that are on the network
};
