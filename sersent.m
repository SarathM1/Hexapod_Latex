 function[]=sersent(m)
ss=instrfind;
delete(ss);
anr=load('comm.dat');
anr=char(anr);
s = serial(anr, 'BaudRate', 115200);
s.OutputBufferSize=1000000;
s.inputbuffersize=400000;
warning off instrument:fscanf:unsuccessfulRead
fopen(s);
fwrite(s,m);
fclose(s);
delete(instrfind);
