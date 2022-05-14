clc;
clear all;

%===========%
%  Creating a audio file for 'boo'
%===========%
y0=[0,0];
[y1,Fs1]=audioread('audios/10.wav');
[y2,Fs2]=audioread('audios/30.wav');
y=cat(1,y1,y2);
s=cat(1,y0,y1);


audiowrite('result.wav',y,Fs1);

t=linspace(0,length(y)/Fs1,length(y));
figure;
plot(t,y(:,1));
title('time domain')
xlabel('time')
ylabel('amplitude');


t=linspace(0,length(y1)/Fs1,length(y1));
figure;
plot(t,y1(:,1));
title('time domain')
xlabel('time')
ylabel('y1');


t=linspace(0,length(y2)/Fs1,length(y2));
figure;
plot(t,y2(:,1));
title('time domain')
xlabel('time')
ylabel('y2');

sound(y,Fs1);
