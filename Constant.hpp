#pragma once
#include <iostream>

int const NE(10000); //!< number of excitatory neurons
int const NI(2500); //!< number of inhibitory neurons
int const N(12500); //!< Total number of neurons
double const TAU(20.0); //!< constant tau 
double const R(20.0); //!< constant R
double const POTENTIEL_MAX(19.8); //!< maximal potential of the membrane
int const REFRAC_TIME(3); //!< Refractory time
int const DT(1); //!< Time step
int const T_START(0); //!<< Starting time of simulation
int const T_STOP(500); //!< ending time of simulation
double const POTENTIEL_RESET(0.0); //!< Potential reset
double const JE(0.1); //!< Potential to add if a neuron receive a message from exitatory neuron
double const JI(-0.5);//!< Potential to add if a neuron receive a message from inhibitory neuron
double const J(0.2); //!< External potential
double const DELAY(1.5); //!< Delay for receinving the post-synaptic potential
int const G(5);
int const ETA(2);
int const CE(NE*0.1); //!< Number of excitatory connexions
int const CI(NI*0.1); //!< Number of inhibitory connexions
double const NU_TH(POTENTIEL_MAX/(J*TAU*CE)); //!< Nu Threashold
double const NU_EXT(ETA*20/(J*TAU)); //!< Nu extern

double const REAL_TIME(0.1); //!< to return to the real time

