import matplotlib.pyplot as plt
import numpy as np
data = np.loadtxt("DATA.dat")
grid = data[:,0]
energy = data[:,1]
time = data[:,2]
k_points= data[:,3]

energy = energy*13.605698

plt.xlabel("grid")
plt.ylabel("energy")
a = plt.plot(grid , energy)
plt.show(a)


