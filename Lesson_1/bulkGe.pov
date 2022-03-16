#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -7.93*x up 8.09*y
  direction 1.00*z
  location <0,0,50.00> look_at <0,0,0>}
light_source {<  2.00,   3.00,  40.00> color White
  area_light <0.70, 0, 0>, <0, 0.70, 0>, 3, 3
  adaptive 1 jitter}

#declare simple = finish {phong 0.7}
#declare pale = finish {ambient .5 diffuse .85 roughness .001 specular 0.200 }
#declare intermediate = finish {ambient 0.3 diffuse 0.6 specular 0.10 roughness 0.04 }
#declare vmd = finish {ambient .0 diffuse .65 phong 0.1 phong_size 40. specular 0.500 }
#declare jmol = finish {ambient .2 diffuse .6 specular 1 roughness .001 metallic}
#declare ase2 = finish {ambient 0.05 brilliance 3 diffuse 0.6 metallic specular 0.70 roughness 0.04 reflection 0.15}
#declare ase3 = finish {ambient .15 brilliance 2 diffuse .6 metallic specular 1. roughness .001 reflection .0}
#declare glass = finish {ambient .05 diffuse .3 specular 1. roughness .001}
#declare glass2 = finish {ambient .0 diffuse .3 specular 1. reflection .25 roughness .001}
#declare Rcell = 0.050;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, TRANS, FIN)
  sphere{LOC, R texture{pigment{color COL transmit TRANS} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, TRANS FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
      torus{R, Rcell rotate -45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
      translate LOC}
#end

cylinder {< -3.28,  -2.39,  -6.51>, <  2.34,  -2.22,  -7.49>, Rcell pigment {Black}}
cylinder {< -3.28,   3.23,  -5.52>, <  2.34,   3.41,  -6.50>, Rcell pigment {Black}}
cylinder {< -2.29,   2.26,   0.01>, <  3.33,   2.43,  -0.96>, Rcell pigment {Black}}
cylinder {< -2.29,  -3.36,  -0.98>, <  3.33,  -3.19,  -1.95>, Rcell pigment {Black}}
cylinder {< -3.28,  -2.39,  -6.51>, < -3.28,   3.23,  -5.52>, Rcell pigment {Black}}
cylinder {<  2.34,  -2.22,  -7.49>, <  2.34,   3.41,  -6.50>, Rcell pigment {Black}}
cylinder {<  3.33,  -3.19,  -1.95>, <  3.33,   2.43,  -0.96>, Rcell pigment {Black}}
cylinder {< -2.29,  -3.36,  -0.98>, < -2.29,   2.26,   0.01>, Rcell pigment {Black}}
cylinder {< -3.28,  -2.39,  -6.51>, < -2.29,  -3.36,  -0.98>, Rcell pigment {Black}}
cylinder {<  2.34,  -2.22,  -7.49>, <  3.33,  -3.19,  -1.95>, Rcell pigment {Black}}
cylinder {<  2.34,   3.41,  -6.50>, <  3.33,   2.43,  -0.96>, Rcell pigment {Black}}
cylinder {< -3.28,   3.23,  -5.52>, < -2.29,   2.26,   0.01>, Rcell pigment {Black}}
atom(< -3.28,  -2.39,  -6.51>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #0 
atom(< -1.64,  -1.19,  -5.14>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #1 
atom(< -2.79,  -0.09,  -3.28>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #2 
atom(< -1.15,   1.11,  -1.90>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #3 
atom(<  0.00,  -2.79,  -4.25>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #4 
atom(<  1.64,  -1.59,  -2.88>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #5 
atom(< -0.49,   0.48,  -6.51>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #6 
atom(<  1.15,   1.68,  -5.13>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #7 
atom(< -2.29,  -3.35,  -1.03>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #8 
atom(<  0.49,  -0.48,  -1.02>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #9 
atom(< -3.28,   3.18,  -5.53>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #10 
atom(<  0.00,   2.79,  -3.27>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #11 
atom(< -2.29,   2.22,  -0.04>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #12 
atom(<  2.29,  -2.22,  -7.48>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #13 
atom(<  2.79,   0.09,  -4.25>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #14 
atom(<  3.28,  -3.18,  -1.99>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #15 
atom(<  2.29,   3.35,  -6.50>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #16 
atom(<  3.28,   2.39,  -1.01>, 0.50, rgb <0.40, 0.56, 0.56>, 0.0, ase3) // #17 
cylinder {< -3.28,  -2.39,  -6.51>, < -2.46,  -1.79,  -5.83>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -2.46,  -1.79,  -5.83>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -2.21,  -0.64,  -4.21>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.79,  -0.09,  -3.28>, < -2.21,  -0.64,  -4.21>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -0.82,  -1.99,  -4.70>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.00,  -2.79,  -4.25>, < -0.82,  -1.99,  -4.70>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -1.06,  -0.35,  -5.82>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -0.49,   0.48,  -6.51>, < -1.06,  -0.35,  -5.82>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.79,  -0.09,  -3.28>, < -1.97,   0.51,  -2.59>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -1.97,   0.51,  -2.59>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -0.33,   0.31,  -1.46>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.49,  -0.48,  -1.02>, < -0.33,   0.31,  -1.46>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -0.57,   1.95,  -2.59>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.00,   2.79,  -3.27>, < -0.57,   1.95,  -2.59>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -1.72,   1.66,  -0.97>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -1.72,   1.66,  -0.97>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -0.32,   0.31,  -1.44>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -0.49,   0.48,  -6.51>, < -1.31,   1.28,  -6.97>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -1.72,   1.66,  -0.95>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -2.71,   2.63,  -6.48>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -0.57,   1.97,  -2.58>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.00,  -2.79,  -4.25>, < -0.57,  -3.65,  -3.57>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -1.72,   1.69,  -0.97>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -1.72,  -3.93,  -1.96>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -1.72,   1.68,  -0.94>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,  -2.39,  -6.51>, < -2.71,  -2.96,  -7.47>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.00,  -2.79,  -4.25>, <  0.82,  -2.19,  -3.57>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  0.82,  -2.19,  -3.57>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  1.06,  -1.04,  -1.95>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.49,  -0.48,  -1.02>, <  1.06,  -1.04,  -1.95>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  2.21,  -0.75,  -3.56>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.79,   0.09,  -4.25>, <  2.21,  -0.75,  -3.56>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  2.46,  -2.39,  -2.44>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  2.46,  -2.39,  -2.44>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  1.07,  -1.04,  -1.92>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -0.49,   0.48,  -6.51>, <  0.08,  -0.07,  -7.46>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  2.46,  -2.39,  -2.41>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  1.47,  -1.42,  -7.95>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  2.48,  -2.41,  -2.44>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -3.14,   3.04,  -0.48>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  2.49,  -2.42,  -2.42>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -4.12,   4.01,  -5.99>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  2.24,  -0.75,  -3.57>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.79,  -0.09,  -3.28>, < -3.38,  -0.92,  -2.59>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  2.48,  -2.39,  -2.44>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -3.14,  -2.56,  -1.46>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  2.49,  -2.39,  -2.42>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,  -2.39,  -6.51>, < -4.12,  -1.59,  -6.97>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -0.49,   0.48,  -6.51>, <  0.33,   1.08,  -5.82>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  0.33,   1.08,  -5.82>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  0.57,   2.23,  -4.20>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.00,   2.79,  -3.27>, <  0.57,   2.23,  -4.20>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  1.97,   0.88,  -4.69>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.79,   0.09,  -4.25>, <  1.97,   0.88,  -4.69>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  1.72,   2.52,  -5.81>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  1.72,   2.52,  -5.81>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  1.72,   2.54,  -5.83>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  2.71,  -4.05,  -1.29>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  0.57,   2.26,  -4.20>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.00,  -2.79,  -4.25>, <  0.57,  -3.36,  -5.19>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  1.72,   2.54,  -5.81>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  1.72,  -3.08,  -6.80>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  1.74,   2.52,  -5.84>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -2.89,   1.37,   0.67>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  1.99,   0.88,  -4.69>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.79,  -0.09,  -3.28>, < -3.63,   0.71,  -3.72>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  1.75,   2.52,  -5.82>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -3.87,   2.34,  -4.84>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  1.74,   2.55,  -5.84>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -2.89,  -4.22,  -0.32>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  1.75,   2.54,  -5.81>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,  -2.39,  -6.51>, < -3.87,  -3.25,  -5.83>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -2.29,  -3.36,  -1.00>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,  -2.39,  -6.51>, < -3.28,  -2.38,  -6.54>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -1.47,  -2.76,  -0.31>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -2.46,  -1.79,  -5.85>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.49,  -0.48,  -1.02>, < -0.08,  -1.33,  -0.31>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -1.07,  -0.35,  -5.85>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.49,  -0.48,  -1.02>, <  0.50,  -0.49,  -0.99>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -0.49,   0.48,  -6.51>, < -0.50,   0.49,  -6.53>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.49,  -0.48,  -1.02>, <  1.31,   0.11,  -0.31>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  0.32,   1.08,  -5.84>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -3.28,   3.21,  -5.55>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -2.29,  -3.38,  -1.01>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -3.28,   3.21,  -5.53>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,  -2.39,  -6.51>, < -3.28,  -2.41,  -6.52>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -2.46,   3.81,  -4.84>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -2.46,  -1.81,  -5.83>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.00,   2.79,  -3.27>, < -0.82,   3.61,  -3.71>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -0.82,  -2.01,  -4.70>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.00,   2.79,  -3.27>, <  0.00,   2.81,  -3.27>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.00,  -2.79,  -4.25>, <  0.00,  -2.81,  -4.26>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  0.00,   2.79,  -3.27>, <  0.82,   3.41,  -2.58>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  0.82,  -2.21,  -3.57>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -2.29,   2.21,  -0.02>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -3.28,   3.19,  -5.55>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -2.29,   2.24,  -0.04>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -2.29,  -3.38,  -1.03>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -2.29,   2.24,  -0.02>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,  -2.39,  -6.51>, < -3.28,  -2.41,  -6.54>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -1.47,   2.83,   0.67>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -2.46,  -1.81,  -5.85>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  2.89,  -2.79,  -8.44>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -1.74,   1.68,  -0.94>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  2.31,  -2.24,  -7.51>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -2.31,   2.24,  -0.01>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  2.32,  -2.24,  -7.49>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -3.30,   3.21,  -5.52>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  2.31,  -2.21,  -7.51>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -2.31,  -3.36,  -1.00>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  2.32,  -2.22,  -7.48>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,  -2.39,  -6.51>, < -3.30,  -2.39,  -6.51>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  3.14,  -1.62,  -6.80>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -2.48,  -1.79,  -5.82>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.79,   0.09,  -4.25>, <  3.38,  -0.47,  -5.18>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -2.24,  -0.64,  -4.20>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.79,   0.09,  -4.25>, <  2.81,   0.09,  -4.25>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.79,  -0.09,  -3.28>, < -2.81,  -0.09,  -3.27>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.79,   0.09,  -4.25>, <  3.63,   0.68,  -3.56>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -1.99,   0.51,  -2.59>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  3.28,  -3.19,  -1.97>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  2.29,  -2.21,  -7.50>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  3.87,  -3.76,  -2.93>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -1.75,   1.69,  -0.96>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  3.30,  -3.21,  -2.00>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -2.32,   2.24,  -0.04>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  3.31,  -3.21,  -1.98>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -3.31,   3.21,  -5.55>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  3.30,  -3.18,  -2.00>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -2.32,  -3.36,  -1.02>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  3.31,  -3.19,  -1.97>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,  -2.39,  -6.51>, < -3.31,  -2.38,  -6.53>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  4.12,  -2.59,  -1.29>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -2.49,  -1.79,  -5.85>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  1.47,   4.18,  -6.96>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  2.46,  -2.42,  -2.42>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  2.29,   3.38,  -6.52>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  3.28,  -3.21,  -1.97>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  2.29,   3.38,  -6.49>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  2.29,  -2.24,  -7.48>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  2.89,   2.81,  -7.46>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -1.74,   1.66,  -0.94>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  2.31,   3.36,  -6.53>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -2.31,   2.21,  -0.02>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  2.32,   3.36,  -6.50>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -3.30,   3.18,  -5.53>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  2.31,   3.38,  -6.52>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -2.31,  -3.38,  -1.00>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  2.32,   3.38,  -6.50>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,  -2.39,  -6.51>, < -3.30,  -2.41,  -6.51>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  3.14,   3.98,  -5.81>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -2.48,  -1.82,  -5.83>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  2.71,   1.54,  -0.30>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.15,   1.68,  -5.13>, <  1.72,   2.52,  -5.84>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  3.28,   2.38,  -0.99>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,   3.35,  -6.50>, <  2.29,   3.36,  -6.52>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  2.46,   3.21,  -1.45>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  1.64,  -1.59,  -2.88>, <  2.46,  -2.41,  -2.44>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  3.28,   2.41,  -1.01>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,  -3.18,  -1.99>, <  3.28,  -3.21,  -2.00>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  3.28,   2.41,  -0.98>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  2.29,  -2.22,  -7.48>, <  2.29,  -2.24,  -7.51>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  3.87,   1.83,  -1.95>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.15,   1.11,  -1.90>, < -1.75,   1.66,  -0.97>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  3.30,   2.39,  -1.02>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,   2.22,  -0.04>, < -2.32,   2.22,  -0.04>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  3.31,   2.38,  -0.99>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,   3.18,  -5.53>, < -3.31,   3.19,  -5.55>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  3.30,   2.41,  -1.01>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -2.29,  -3.35,  -1.03>, < -2.32,  -3.38,  -1.03>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  3.31,   2.41,  -0.99>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -3.28,  -2.39,  -6.51>, < -3.31,  -2.41,  -6.54>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {<  3.28,   2.39,  -1.01>, <  4.12,   3.00,  -0.30>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
cylinder {< -1.64,  -1.19,  -5.14>, < -2.49,  -1.81,  -5.85>, Rbond texture{pigment {color rgb <0.40, 0.56, 0.56> transmit 0.0} finish{ase3}}}
