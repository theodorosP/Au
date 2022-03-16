from ase.build import bulk 
from ase.io import write
from ase.visualize import view
from ase.io.pov import get_bondpairs
import numpy as np

bulkGe = bulk('Ge',crystalstructure = 'diamond', a = 5.657,cubic = True)
cell_end = bulkGe.get_cell()
cell_end = cell_end[0,0] + 0.05

bulkGe *= (2,2,2)

for i in range(len(bulkGe)-1,-1,-1): 
    post = bulkGe.get_positions()
    if post[i,0] > cell_end or post[i,1] > cell_end or post[i,2] > cell_end: 
       del bulkGe[i]

r = np.array([0.5 for x in range(len(bulkGe))])
bulkGe.set_cell([cell_end,cell_end,cell_end])
bondAtoms = get_bondpairs(bulkGe, radius = 1.1)
#1view(bulkGe)
write('bulkGe.pov',bulkGe,canvas_width = 300, run_povray = True, radii = r, bondatoms = bondAtoms,rotation = '10y,10x',show_unit_cell = 2)
