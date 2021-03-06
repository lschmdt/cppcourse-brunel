#pragma once
#include <iostream>
#include <cmath>

int const NE(10000); // number of excitatory neurons
int const NI(2500); // number of inhibitory neurons
int const N(12500); // Total number of neurons
double const TAU(20.0); // constant tau 
double const R(20.0); // constant R
double const POTENTIEL_MAX(20.0); // maximal potential of the membrane
int const REFRAC_TIME(2.0); // Refractory time
int const DT(1); // Time step
int const T_START(0); // Starting time of simulation
int const T_STOP(1000); // ending time of simulation
double const POTENTIEL_RESET(0.0); // Potential reset
int const G(5); //ratio JI/JE

double const JE(0.1); // Potential to add if a neuron receive a message from exitatory neuron
double const JI(-G*JE);//Potential to add if a neuron receive a message from inhibitory neuron
double const J(0.2); // External potential
double const DELAY(15); // Delay for receinving the post-synaptic potential
int const BUFFER_SIZE(DELAY+1); //Size of our delay buffer

int const ETA(2); //the ration between our potential
int const CE(NE*0.1); // Number of excitatory connexions
int const CI(NI*0.1); // Number of inhibitory connexions
int const C(CE+CI); //Total number of constant
double const NU_EXT(ETA*20/(J*TAU)); // Nu extern
double const REAL_TIME(0.1); // to return to the real time
double const CONSTANTE_1(exp(-REAL_TIME/TAU)); // constant 1 for the membrane potentiel calculus
double const CONSTANTE_2(R*(1.0-CONSTANTE_1)); // constant 2 for membrane's calculus


