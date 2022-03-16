from ase import Atoms
from ase.visualize import view
a = Atoms('H2O', [(0, 1, 0), (1, 0, 0), (0, 0, 1)])
a.get_positions()
view(a)
