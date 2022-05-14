clc;
clear all;

% Taking user input
j=0;
while j<10
txt = input("Write a word:","s");
n=length(txt);

%==============================%

%==============================%


%=====================================%
% Sound 
%=====================================%
if n<2
    disp("Please enter a valid text");
    return;
else
    y=[0,0];
    i=0;
    while i<n
        i=i+1;
        word=txt(i);
        if word=='f'
            [y0,Fs]=audioread('audios/1.wav');
        elseif word=='v'
             [y0,Fs]=audioread('audios/2.wav');
        elseif word=='p'
             [y0,Fs]=audioread('audios/9.wav');
        elseif word=='b'
             [y0,Fs]=audioread('audios/10.wav');
        elseif word=='k'
             [y0,Fs]=audioread('audios/11.wav');
        elseif word=='g'
             [y0,Fs]=audioread('audios/12.wav');
        elseif word=='d'
             [y0,Fs]=audioread('audios/14.wav');
        elseif word=='m'
             [y0,Fs]=audioread('audios/17.wav');
        elseif word=='l'
             [y0,Fs]=audioread('audios/20.wav');
        elseif word=='r'
             [y0,Fs]=audioread('audios/21.wav');
        elseif word=='y'
             [y0,Fs]=audioread('audios/23.wav');
        elseif word=='h'
             [y0,Fs]=audioread('audios/24.wav');
        elseif word=='j'
             [y0,Fs]=audioread('audios/16.wav');
        elseif word=='z'
             [y0,Fs]=audioread('audios/8.wav');
        elseif word=='w'
             [y0,Fs]=audioread('audios/22.wav');       
  % ----------------------------------------
  % cases for 't' , 'th' , 'tia' , 'tio' 
        elseif word=='t'
             [y0,Fs]=audioread('audios/13.wav');
            if i<n
                if txt(i+1)=='h'
                     [y0,Fs]=audioread('audios/3.wav');
                     i=i+1;
                end
                if i<n-1
                    if txt(i+1)=='i'
                        if txt(i+2)=='a' || txt(i+2)=='o'
                           [y0,Fs]=audioread('audios/8.wav');  
                           i=i+2;
                        end
                    end
                end
            end
   %----------------------------------------------------
   % cases for ''si'' , ''sh'' , "s"
    elseif word=='s'
          [y0,Fs]=audioread('audios/5.wav');
          if i<n
                if txt(i+1)=='i' && i>1
                     [y0,Fs]=audioread('audios/8.wav');
                     i=i+1;
                elseif txt(i+1)=='h'
                     [y0,Fs]=audioread('audios/7.wav');
                     i=i+1;
                else
                     [y0,Fs]=audioread('audios/5.wav');
                end
          end
    elseif word=='c'
           [y0,Fs]=audioread('audios/11.wav');
           if i<n
               if txt(i+1)=='h'
                     [y0,Fs]=audioread('audios/15.wav');
                     i=i+1;
                else
                     [y0,Fs]=audioread('audios/11.wav');
                end
           end
     %-------------------------------------------------------------
     
     elseif word=='a'
           [y0,Fs]=audioread('audios/25.wav');
           if i<n
                if txt(i+1)=='r'
                     [y0,Fs]=audioread('audios/35.wav');
                     i=i+1;
                elseif txt(i+1)=='i'
                     [y0,Fs]=audioread('audios/41.wav');
                     i=i+1;
                     if i<n
                         if txt(i+1)=='r'
                              [y0,Fs]=audioread('audios/43.wav');
                               i=i+1;
                         end
                     end
                else
                     [y0,Fs]=audioread('audios/25.wav');
                end
           end
        
  %-------------------------------------------------------------
     elseif word=='i'
           [y0,Fs]=audioread('audios/27.wav');
           if i<n
                if txt(i+1)=='r'
                     [y0,Fs]=audioread('audios/26.wav');
                     i=i+1;
                end
           end
   %-----------------------------------------------------------
    elseif word=='e'
           [y0,Fs]=audioread('audios/36.wav');
           if i<n
                if txt(i+1)=='a'
                     [y0,Fs]=audioread('audios/28.wav');
                     i=i+1;
                     if i<n
                         if txt(i+1)=='r'
                              [y0,Fs]=audioread('audios/42.wav');
                               i=i+1;
                         end
                     end
                else
                     [y0,Fs]=audioread('audios/36.wav');
                end
           end
     %-----------------------------------------------------------
      elseif word=='o'
           [y0,Fs]=audioread('audios/31.wav');
           if i<n
                if txt(i+1)=='r'
                     [y0,Fs]=audioread('audios/32.wav');
                     i=i+1;
                elseif txt(i+1)=='w'
                     [y0,Fs]=audioread('audios/38.wav');
                     i=i+1;
                elseif txt(i+1)=='y'
                     [y0,Fs]=audioread('audios/40.wav');
                     i=i+1;
                elseif txt(i+1)=='o'
                     [y0,Fs]=audioread('audios/30.wav');
                     i=i+1;
                elseif txt(i+1)=='u'
                     if i<n
                         if txt(i+2)=='r'
                              [y0,Fs]=audioread('audios/44.wav');
                               i=i+2;
                         end
                     end
                else
                     [y0,Fs]=audioread('audios/31.wav');
                end
           end
 %-------------------------------------------------------------
     elseif word=='n'
           [y0,Fs]=audioread('audios/18.wav');
           if i<n
                if txt(i+1)=='g'
                     [y0,Fs]=audioread('audios/19.wav');
                     i=i+1;
                end
           end
        else
            disp("Invalid Input!");
            return;
        end
     y=cat(1,y,y0);
    end
    audiowrite('result.wav',y,Fs);
     
     sound(y,Fs);

     t=linspace(0,length(y)/Fs,length(y));
     figure;
     plot(t,y(:,1));
     title('time domain');
     xlabel('time');
     ylabel('amplitude');
end
end