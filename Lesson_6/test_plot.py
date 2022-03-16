import numpy as np 
import matplotlib.pyplot as plt 

data = np.loadtxt('DATA.dat')
grid = data[:,0]
energy = data[:,1]
time = data[:,2]
k_points = data[:,3]

conv_En = 0.000073499
conv_pt = 0
for i in range(1,len(energy)):
   en_diff = np.array(energy[i-1] - energy[i])
   if en_diff < conv_En:
     conv_pt = i
     break

energy = energy*13.605698

plt.figure(1, figsize = (3.5,3.5))
plt.plot(k_points,energy)
plt.ylabel('Total Energy (eV)')
plt.xlabel('Number of K-point Samples')
plt.scatter(k_points[conv_pt],energy[conv_pt],s = 100,label= 'K-point sample ' + str(int(k_points[conv_pt])))
plt.legend(loc=1) 
plt.show()

