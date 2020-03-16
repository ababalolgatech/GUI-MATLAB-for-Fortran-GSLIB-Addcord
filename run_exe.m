function run_exe(obj)
      fp = what('@addcoord') ;
      fp = fp.path       ;
addcoord_bin = strcat(fp,'\','addcoord.exe');

parfile = strcat(obj.Filedir,obj.addcoord_par_file) ; 
file_out = strcat(obj.Filedir,obj.addcoord_out_file) ;



 if exist(file_out)
         delete(file_out)  ; % delete previous file
 end

if ~exist (parfile)
      error("Parameter file does not exist on disk") ;
 end
 
      [status,result]=system(sprintf('"%s" %s',addcoord_bin,parfile));
      
      if ~exist(file_out)
          result
          error("Program did not run successfully")
      else
          disp("addcoord ran succesfully")
          disp("---------------------")
      end 