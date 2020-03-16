function  write_param(obj)

file_in  = strcat(obj.Filedir,obj.addcoord_in_file)  ;
file_out = strcat(obj.Filedir,obj.addcoord_out_file) ;
file_par = strcat(obj.Filedir,obj.addcoord_par_file) ;


fid = fopen(file_par,'w');
fprintf(fid,'                   Parameters for addcoord\n') ;
fprintf(fid,'                  *********************\n');
fprintf(fid,'                                      \n');
fprintf(fid,'START OF PARAMETERS                   \n');
fprintf(fid,'%s                         -file with data\n',file_in);
fprintf(fid,'%s                         -file for output\n',file_out);
% fprintf(fid,'%d                         -realization number\n',obj.nrealization;
fprintf(fid,'%d                         --realization number\n',obj.nrealization);
fprintf(fid,'%d %8.4f %8.4f             -nx,xmn,xsiz\n',obj.nx_xmn_xsize(1,:));
fprintf(fid,'%d %8.4f %8.4f             -ny,ymn,ysiz\n',obj.ny_ymn_ysize(1,:));
fprintf(fid,'%d %8.4f %8.4f             -nz,zmn,zsiz\n',obj.nz_zmn_zsize(1,:));

fclose(fid);

end