import matplotlib.pyplot as plt
import numpy as np

data = np.loadtxt("bands.dat.gnu")
k_points = data[:,0]
energy_values = data[:,1]-  5.8948


plt.title("Ge Bulk Band structure DFT")
plt.xlabel("k points")
plt.ylabel("energy values of k points in eV")
plt.scatter(k_points , energy_values, s = 1)
plt.ylim(-15 , 8)
ax = plt.axes()

ticks = (k_points[0], k_points[275], k_points[275+224])


label = ('L', r'$\Gamma$','X')
ax.set_xticks(ticks)
ax.set_xticklabels(label)
plt.axvline(x = ticks[0], color = "black", linestyle = "--")
plt.axvline(x = ticks[1], color = "black", linestyle = "--")
plt.axvline(x = ticks[2], color = "black", linestyle = "--")

plt.axhline(y = 0, color = "black", linestyle = "dotted")

plt.show()


