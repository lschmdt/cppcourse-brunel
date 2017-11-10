#include "Neuron.hpp"
#include "Network.hpp"
#include "gtest/include/gtest/gtest.h"
#include <iostream>
#include <cmath>

TEST (NeuronTest, MembranePotential){
	Neuron neuron1(EXCITATORY);
	Neuron neuron2(EXCITATORY);
	Neuron neuron3(EXCITATORY);
	
	/*spikes : 924, 1868*/
	//Test that when a spike occurs the potential is at 20mV
	neuron1.simulationLoopNeuron(923, 1.01);
	EXPECT_NEAR(neuron1.getPotential(), 20.0 , 1);
	
	neuron2.simulationLoopNeuron(0, 1.01);
	EXPECT_NEAR(neuron2.getPotential(),0.0 , 1);
	
	neuron3.simulationLoopNeuron(925, 1.01);
	EXPECT_NEAR(neuron3.getPotential(), 0, 1);
	
}

TEST(NeuronTest, NegativeInput){
	Neuron n(EXCITATORY);
	n.updateState(1, -1.0);
	EXPECT_EQ(-1 * R * (1.0 - exp(- REAL_TIME / TAU)), n.getPotential());
}

TEST(NeuronTest, RefractoryTest){
	Neuron neuron(EXCITATORY);
	//test if a refractory neuron has its potential to 0
	if(neuron.isRefractory()){
		EXPECT_EQ(neuron.getPotential(), 0.0);
	}
}

TEST(NeuronTest, NumberSpike){
	Neuron neuron(EXCITATORY);
	//test if the neuron has just one spike after 1000 step of simulation
	neuron.simulationLoopNeuron(1000, 1.01);
	EXPECT_EQ(neuron.getNumberSpikes(), 1);
}

TEST(NeuronTest,TeacherTest){
	Neuron neuron(EXCITATORY);
	//test if the calcul of the membrane potential is right
	neuron.updateState(1, 1.0);
	EXPECT_EQ(20.0*(1.0-std::exp(-0.1/20.0)), neuron.getPotential());
}

TEST(NetworkTest, NumberConnexions){
	Network n;
	//test if my programm does have the right number of connections.
	EXPECT_EQ(n.nbConnexion(), C*N);
}

int main(int argc, char**argv) 
{
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
