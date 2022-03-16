"""
Replace XX with appropriate values, which are coordinate of L, G, X points
"""
from dlePy.vasp.kpoints import vasp_band_gen_k
import numpy as np
a = 5.771

klist=(
  ( np.pi/a,     np.pi/a,     np.pi/a), #     L
   ( 0,     0,     0), #     G
   ( 0,   2*np.pi/a,    0), #     X
      )

npts = ppf = 301

vasp_band_gen_k(klist,npts,ppf)


