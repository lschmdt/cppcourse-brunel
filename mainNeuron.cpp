#include "Neuron.hpp"
#include "Network.hpp"
#include <fstream>
#include <string>

int main()
{
	Network n;
	double t(T_START);
	
	while ( t < T_STOP){
		n.update(t, 0.0);
		t += DT;
	}
	
	n.createFile();
	
	return 0;
}
