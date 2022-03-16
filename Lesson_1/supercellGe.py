from ase.visualize import view
from ase.build import bulk
lat_const = 5.657 + 0.05*5.657
bulkGe = bulk('Ge', crystalstructure = 'diamond', a = lat_const, cubic = True)
bulkGe *= (3, 3, 3)
view(bulkGe)
