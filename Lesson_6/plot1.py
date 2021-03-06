import matplotlib.pyplot as plt
import numpy as np
data = np.loadtxt("DATA.dat")
grid = data[:,0]
energy = data[:,1]
time = data[:,2]
k_points = data[:,3]

conv_En = 0.000073499
b = 0
for i in range(1, len(energy)):
	en_dif = np.array(energy[i-1] - energy[i])
	if en_dif < conv_En:
		b = i
		break

energy = energy*13.605698
plt.plot(k_points , energy)
plt.xlabel("k-points")
plt.ylabel("energy")
plt.scatter(k_points[b] , energy[b])
plt.show()

