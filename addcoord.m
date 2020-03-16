classdef addcoord < handle
    
    
    properties
     nx_xmn_xsize ;
     ny_ymn_ysize ;
     nz_zmn_zsize ;
	 nrealization ;
          
     %  Data 
        data ;		
		addcoord_in_file   ;
        addcoord_out_file  ;
        addcoord_par_file  ;
        Filedir       ;
        
    end
    
    methods
       
         obj = run_exe(obj,parfile) ;
		% obj = make_param(obj,dir) ;
         obj = write_param(obj) ;
         %obj = write_data(obj, data,fp) ;
         obj = read_variogram(obj,ndir,nvariogram)
    end
    
end