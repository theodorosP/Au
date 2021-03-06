import matplotlib.pyplot as plt
import numpy as np

data = np.loadtxt("scf.dos")
energy = data[:,0]
dos = data[:,1]

plt.title("energy vs density of states")
plt.xlabel("energy")
plt.ylabel("density of states")
plt.plot(energy, dos)
plt.show()

