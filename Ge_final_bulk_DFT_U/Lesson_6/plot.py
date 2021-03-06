import numpy as np 
import matplotlib.pyplot as plt 

data = np.loadtxt('DATA.dat')
kpt = data[:,0]
energy = data[:,1]
time = data[:,2]
kptSamp = data[:,3]

conv_En = 0.000073499
conv_pt = 0
for i in range(1,len(energy)):
   en_diff = np.array(energy[i-1] - energy[i])
   if en_diff < conv_En:
     conv_pt = i
     break

energy = energy*13.605698

plt.figure(1, figsize = (3.5,3.5))
plt.plot(kptSamp,energy)
plt.ylabel('Total Energy (eV)')
plt.xlabel('Number of K-point Samples')
plt.scatter(kptSamp[conv_pt],energy[conv_pt],s = 100,label= 'K-point sample ' + str(int(kptSamp[conv_pt])))
plt.legend(loc=1) 
plt.savefig('TE_vs_KptS.png',dpi = 100,bbox_inches = 'tight')

plt.figure(2, figsize = (3.5,3.5))
plt.plot(kpt,energy)
plt.ylabel('Total Energy (eV)')
plt.xlabel('N (NxNxN K-point mesh)')
plt.scatter(kpt[conv_pt],energy[conv_pt],s = 100,label= 'K-point Mesh ' + str(int(kpt[conv_pt])))
plt.legend(loc=1)
plt.savefig('TE_vs_Kpt.png',dpi = 100,bbox_inches = 'tight')


plt.figure(3, figsize = (3.5,3.5))
plt.plot(kpt,time,label = 'Total Time vs K-point mesh')
plt.xlabel('N (NxNxN K-point mesh)')
plt.ylabel('Total Time (s)')
plt.savefig('kpt_vs_time.png',dpi = 100,bbox_inches = 'tight')

