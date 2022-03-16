import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("DATA.dat")
kin_en_cut_off = data[:,0]
tot_energy = data[:,1]
tot_time =data[:,2]

conv_en = 0.000073499
b = 0
for i in range(1 , len(kin_en_cut_off)):
	en_dif = np.array(tot_energy[i-1] - tot_energy[i])
	if en_dif < conv_en:
		b = i
		break

plt.title("Energy cut off vs total energy")
plt.xlabel("Kinetic energy cut off")
plt.ylabel("Total energy")
plt.plot(kin_en_cut_off , tot_energy)
plt.scatter(kin_en_cut_off[b] , tot_energy[b], label =  "min kin en cut of :" +str(kin_en_cut_off[b]))
plt.legend()
plt.show()
