%Experiment 1: Sampling and Aliasing            Date: 22/01/2020

clc;
clear all;
close all;

f = 50;
fs1 = 180;
fs2 = 75;

t = linspace(0,1,fs1*fs2*100+1);  
t1 = linspace(0,0.1,fs1*100+1); %Duration of 0.1s

y = sin(2*pi*f*t);  %CT Signal
y1 = sin(2*pi*f*t1); %Duration of 0.1s

figure();

subplot(3,3,2);
plot(t1,y1);
xlabel t;
ylabel x(t);
title("CT Signal of Duration 0.1s");


%Sampling the CT signl at 180Hz
y_sampled1 = [];
i=1;
for k = 1:length(t)
    if(mod(t(k),1/fs1) == 0)
        y_sampled1(i)  = y(k);
        i=i+1;
    end
    if(t(k)>0.1)
        break
    end
end

subplot(3,3,4);
stem(0:length(y_sampled1)-1,y_sampled1);
xlabel n;
ylabel x1[n];
title("DT version sampled at 180Hz");


y_sampled2 = [];
i=1;
%Sampling the CT signl at 75Hz
for k = 1:length(t)
    if(mod(t(k),1/fs2) == 0)
        y_sampled2(i)  = y(k);
        i=i+1;
    end
    if(t(k)>0.1)
        break
    end
end
subplot(3,3,7);
stem(0:length(y_sampled2)-1,y_sampled2);
xlabel n;
ylabel x2[n];
title("DT version sampled at 75Hz");

%Plotting the magnitude spectrum of 180Hz DT Version
Y1_w = [];
w = linspace(-pi,pi,1000);
k = 1;
for i = 1:length(w)
    sum = 0;
    for j = 1:length(y_sampled1)
        sum = sum + y_sampled1(j)*exp(-1i*w(i)*j);
    end
    Y1_w(i) = sum;
end

subplot(3,3,5);
plot(w,abs(Y1_w));
xlabel w;
ylabel X1(w);
title("Magnitude Spectrum vs angular frequency");
subplot(3,3,6);
plot(linspace(-90,90,length(Y1_w)),abs(Y1_w));
xlabel f;
ylabel X1(w);
title("Magnitude Spectrum vs frequency");

%Plotting the magnitude spectrum of 75Hz DT Version
Y2_w = [];
w = linspace(-pi,pi,1000);
k = 1;
for i = 1:length(w)
    sum = 0;
    for j = 1:length(y_sampled2)
        sum = sum + y_sampled2(j)*exp(-1i*w(i)*j);
    end
    Y2_w(i) = sum;
end

subplot(3,3,8);
plot(w,abs(Y2_w));
xlabel w;
ylabel X2(w);
title("Magnitude Spectrum vs angular frequency");
subplot(3,3,9);
plot(linspace(-90,90,length(Y2_w)),abs(Y2_w));
xlabel f;
ylabel X2(w);
title("Magnitude Spectrum vs frequency");


    
