from ase import Atoms
from ase.visualize import view
L = 10
d = 1
wire = Atoms('Au',
       positions=[[0, L / 2 , L /2]],
       cell=[d, L , L],
       pbc=[1, 0 ,0])
view(wire)
