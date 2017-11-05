#pragma once

#include <iostream>
#include <cmath>
#include <vector>
#include <array>
#include <random>
#include "Constant.hpp"

enum Type{EXCITATORY, INHIBITORY};

class Neuron {
	public:
	Neuron(Type x);
	~Neuron();
	double getPotential() const;
	int getNumberSpikes() const;
	std::vector<double> getTime() const;
	bool getEtat() const;
	Type getType() const;
	void setBuffer(int i, double potential);
	
	void updateState(int time, double intensity);
	
	void ifReceiveMessage(Neuron* n);
	bool isRefractory();
	
	//for the simulation
	void simulationLoopNeuron(int time_simul, int i_ext);
	
	//target test
	void addTarget(int i);
	std::vector<int> getTarget() const;
	
	//choose random external current who spikes
	void updateStatePoisson(int t, int i_ext);

	private:
	bool etat;	// Spiking or not
	int clock;	// Internal clock
	double refrac_time; // Refractory time
	double membrane_pot; // Membrane potential
	int number_spikes; // Number of spikes in a given interval
	std::vector<double> time_spikes; // times when a Neuron spikes
	Type type; //type is exitatory or inhibiory
	std::array<double,29> buffer;	// The buffer
	std::vector<int> targets;	// Its connexions with others
};
