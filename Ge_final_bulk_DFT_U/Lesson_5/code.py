import os

start_val = 20
end_val = 70
mini = start_val 
for i in range( 20, 75, 5 ):
  EN_folder = 'EN-' + str( i )
  NAME_OF_WRITE_FILE = 'write_input.py'
  os.system( 'mkdir ' + EN_folder )
  os.system( 'cp ' + NAME_OF_WRITE_FILE + ' job ' + EN_folder )
  os.chdir( EN_folder )
  os.system( 'sed -i \'s/$mini/' + str( i ) + '/g\' ' + NAME_OF_WRITE_FILE )
  #os.system( 'mkdir -p ' + EN_folder )
  #os.system( 'cp ' + NAME_OF_WRITE_FILE + ' job ' + EN_folder )
  #os.system( 'sed -i \'s/$mini/' + str( mini ) + '/g\' ' + NAME_OF_WRITE_FILE )
  os.system( 'python ' + NAME_OF_WRITE_FILE )
  os.system( 'qsub job' ) 
  os.chdir ( '../' )
os.chdir( '../' )

