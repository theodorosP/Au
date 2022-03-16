import os

start_val = 4
end_val = 18
cut = start_val 
for i in range( 4, 18, 1 ):
  EN_folder = 'K-' + str( i )
  NAME_OF_WRITE_FILE = 'write_input.py'
  os.system( 'mkdir ' + EN_folder )
  os.system( 'cp ' + NAME_OF_WRITE_FILE + ' job ' + EN_folder )
  os.chdir( EN_folder )
  os.system( 'sed -i \'s/$cut/' + str( i ) + '/g\' ' + NAME_OF_WRITE_FILE )
  #os.system( 'mkdir -p ' + EN_folder )
  #os.system( 'cp ' + NAME_OF_WRITE_FILE + ' job ' + EN_folder )
  #os.system( 'sed -i \'s/$cut/' + str( mini ) + '/g\' ' + NAME_OF_WRITE_FILE )
  os.system( 'python ' + NAME_OF_WRITE_FILE )
  os.system( 'qsub job' ) 
  os.chdir ( '../' )
os.chdir( '../' )

