from ase.visualize import view
from ase.build import bulk

bulkGe = bulk('Ge', crystalstructure = 'diamond', a = 5.657, cubic = True)
view(bulkGe)

