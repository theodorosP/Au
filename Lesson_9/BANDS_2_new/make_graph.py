import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("bands.dat.gnu")
k_points = data[:,0]
eigen_values = data[:,1]

plt.title("k points vs eigenvalues of k points in eV")
plt.xlabel("k points")
plt.ylabel("eigen values of k points in eV")
plt.scatter(k_points, eigen_values)
ax = plt.axes()

plt.axvline(x = k_points[0], color = 'black', linestyle = '--', label = "L")
plt.axvline(x = k_points[149], color = 'black', linestyle = '--', label = "G")
plt.axvline(x = k_points[300], color = 'black', linestyle = '--', label = "X")


plt.show()
