clc;
clear all;

outfile='audios/7.wav';              % change
[y,Fs]=audioread(outfile);

sound(y,Fs);

     t=linspace(0,length(y)/Fs,length(y));
     figure;
     plot(t,y(:,1));
     title('time domain');
     xlabel('time');
     ylabel('amplitude');