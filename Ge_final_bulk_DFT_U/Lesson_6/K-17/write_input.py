from ase.build import bulk
from dlePy.qe.pwscf import PWscfInput , write_pwscf_input , update_keyword

#make the structure that I want

Gebulk = bulk( 'Ge', 'diamond')

#build the pwscf object for Gebulk that we want
pwscf = PWscfInput( Gebulk )

#now if I just close the file then I will produce an output that it is "almost empty", so I have to update stome keywords in order to produce the input.inp file that we want.

#change calucaltion to scf
update_keyword(pwscf.control.settings , "calculation" , "scf")
update_keyword(pwscf.control.settings , "restart_mode" , "from_scratch")

#update pseudo_dir
update_keyword(pwscf.control.settings , "pseudo_dir" , "/shared/ESPRESSO/PSLIBRARY/1.0.0/pbe/PSEUDOPOTENTIALS/")

update_keyword(pwscf.control.settings, "wf_collect" , False)

update_keyword(pwscf.control.settings, "prefix" , "scf")

update_keyword(pwscf.control.io , "verbosity" , "low")

update_keyword(pwscf.control.io , "outdir" , "./tmp/")

mass = [ 72.6300 ] 
pseudo_potential = [ 'Ge.pbe-n-kjpaw_psl.1.0.0.UPF' ]
update_keyword(pwscf.atomic_species , "mass" , mass)
update_keyword( pwscf.atomic_species, "pseudo_potential", pseudo_potential )

update_keyword(pwscf.system.occupations , "degauss" , 0.007)
update_keyword(pwscf.system.occupations , "smearing" , "fd")
update_keyword(pwscf.system.occupations , "occupations" , "smearing")
update_keyword(pwscf.system.ecut , "ecutwfc" , 40)
update_keyword(pwscf.system.ecut , "ecutrho" , 5*40)

update_keyword( pwscf.kpoints, "mesh", [17,17,17] )
update_keyword( pwscf.kpoints, "smesh",[0,0,0] ) 
 

write_pwscf_input( pwscf, "input.inp")

