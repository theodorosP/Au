import numpy as np
import matplotlib.pyplot as plt
from ase.eos import EquationOfState
from sympy import * 

data = np.loadtxt('DATA.dat')
a = data[:,0]
e = data[:,1]*13.6
v = np.zeros(len(a))
print( a ) 
for i,a1 in enumerate(a):
   mat = np.array(((0,a1/2.,a1/2.),(a1/2.,0,a1/2.),(a1/2.,a1/2.,0)))
   v[i] = np.abs(np.linalg.det(mat))
print( v ) 
eos = EquationOfState(v,e)
v0, e0, B = eos.fit()

print(eos)
q = eos.plot('aVSe.png')
plt.show(q)
a0 = (v0*4)**(1./3)
conv_BM = B * 160.21766208

file = open('RESULTS.dat','w')
file.write("Optimized lattice parameter of Ge: %5.14f A\n" %a0)
file.write("Bulk modulus of Ge: %5.3f GPa\n" %conv_BM)

