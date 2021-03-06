import numpy as np
import pylab as pl

data = np.genfromtxt('spikes.gdf')

select = np.array([d for d in data if d[1] < 30])
data1 = select.transpose()
pl.scatter(0.1*data1[0], data1[1], alpha = 0.5, edgecolors = 'none');
pl.show();

n, bins, patches = pl.hist(0.1*data1[0], 150, normed = 0, alpha = 0.75)
pl.show();
