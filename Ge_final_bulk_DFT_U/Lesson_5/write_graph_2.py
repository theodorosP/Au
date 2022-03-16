import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("DATA.dat")
kin_en_cut_off = data[:,0]
tot_energy = data[:,1]
tot_time =data[:,2]

plt.title("energy cut off vs total time")
plt.xlabel("kinetic energy cut off in Ry")
plt.ylabel("Total time in (s)")
plt.plot(kin_en_cut_off, tot_time)
plt.show()

