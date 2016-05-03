clc
ss=instrfind;
delete(ss);
anr=load('comm.dat');
anr=char(anr);
 s = serial(anr, 'BaudRate',115200,'timeout',2);
s.OutputBufferSize=1000000;
s.inputbuffersize=400000;
warning off instrument:fscanf:unsuccessfulRead
 fopen(s);
 out2=fread(s,100000,'uint8');
 out2=char(out2');
fclose(s)
 