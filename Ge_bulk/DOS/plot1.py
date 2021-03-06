import matplotlib.pyplot as plt
import numpy as np


data = np.loadtxt("scf.dos")
energy = data[:,0]-5.8943
dos = data[:,1]
plt.xlim([-15, 18])

plt.title("energy vs density of states")
plt.xlabel("energy")
plt.ylabel("density of states")
plt.plot(energy, dos)
plt.show()

