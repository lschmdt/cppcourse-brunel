# cppcourse-brunel
This project consist of running a simulaiton of 12500 neurons which are connect to each other with a probability of 10%. It
follows the simulation of Nicolas Brunel : "Dynamics of Sparsely Connected Networks of Excitatory and Inhibitory Spiking Neurons"

During the simulation the neurons could spike if thex reached a potential of 20mV. If they spike they send a potential to their 
connected neurons. JE if they are excitatory and JI if they are inhibitory.
There is also a transmission delay which is representated with the help of a buffer.

All the constants as numbers of inhibitory or excitatory neurons, potential which are given after spikes could be changed in the 
file : Constant.hpp
To use the doxygen documentation : make doc -> then the file will be create into the folder of the simulation
To run the simulation : ./Neuron -> after the compilation with cmake
To run the tests and look if they pass or not : ./Neuron_unittest1 -> after the compilation with cmake
