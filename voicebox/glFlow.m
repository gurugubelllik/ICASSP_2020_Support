path(path,'/home/signal/sriram/splib/voiceBox');
ncyc=5;
period=100;
t=0:1/period:ncyc;
ug=glotlf(0,t);
dug=diff(ug);
figure;
subplot(2,1,1); plot((1:300)/10000*1000,ug(91:390));
subplot(2,1,2); plot((1:300)/10000*1000,dug(91:390));

