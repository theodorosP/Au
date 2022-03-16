"""
Replace XX with appropriate values, which are coordinate of L, G, X points
"""
from dlePy.vasp.kpoints import vasp_band_gen_k
import numpy as np


klist=(
  (0.5,   0.5,   0.5), #     L
   ( 0,     0,     0), #     G
   ( 0,  0.5,    0.5), #     X
      )

npts = ppf = 500

vasp_band_gen_k(klist,npts,ppf)


