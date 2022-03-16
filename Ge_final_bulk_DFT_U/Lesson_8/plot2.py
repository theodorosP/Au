import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt('DATA2.dat')
lat = data[:,0]
energy = data[:,1]*13.605698

plt.plot(lat,energy)
plt.xlabel('Lattice Parameter (Angstrom)')
plt.ylabel('Total Energy (eV)')

min_ene = energy[0]
for i,at in enumerate(energy):
   if at < min_ene: 
      min_ene = at
      min_lat = lat[i]
      min = i

plt.scatter(lat,energy)
plt.scatter(min_lat,min_ene,label = 'Mini. energy is at ' + str(min_lat) +' A')
plt.legend(loc = 1) 
plt.savefig('DATA2.png')

