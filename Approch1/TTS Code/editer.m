clc;
clear all;

filename='audios/44.wav';  % change
[s,F]=audioread(filename);

figure;
plot(s(:,1));
title('input signal');

%===========
% Limits
%===========
lower=1400;                   % change
upper=7400;                  % change

%===============
% Outfile
%===============
outfile='audios/44.wav';              % change
audiowrite(outfile,s(lower:upper,:),F);
[y,Fs]=audioread(outfile);

sound(y,Fs)
figure;
plot(y(:,1));
title('output signal');
