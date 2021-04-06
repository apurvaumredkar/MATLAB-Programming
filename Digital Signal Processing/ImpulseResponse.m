%Experiment 2           Date: 29/01/2020

clc;
clear all;
close all;
f = 500;    %signal frequency of 500Hz
fs = 6000;  %sampling frequency of 6kHz
t = linspace(0,1,fs*1000+1); 
t1 = linspace(0,0.008,fs*1000+1);
x = sin(2*pi*f*t);
x1 = sin(2*pi*f*t1);
figure();
subplot(211);
plot(t1,x1);
title("CT Signal of 500Hz frequency");
xlabel t;
ylabel x(t);
%Sampling at 6kHz
x_sampled = [];
k = 1;
for i = 1:length(x)
    if(mod(t(i),1/fs)==0)
        x_sampled(k) = x(i);
        k=k+1;
    end
    if(t(i)>0.008)
        break;
    end
end
subplot(212);
stem(x_sampled);
title("Sampled Version @6000Hz");
xlabel n;
ylabel x[n]
%Output of the filter
y=[1,2.56,4.3336,6.060816,zeros(1,56)];
x2=[1,zeros(1,59)];
for n=5:1:60
    y(n) = x2(n)+x2(n-3)+2.56*y(n-1)-2.22*y(n-2)+0.65*y(n-3);
end
figure()
subplot(321);
stem(y);
title("Output of filter");
ylabel("Impulse Response");
xlabel k;
%Impulse response using filter function
b=[1 0 0 1];
a=[1 -2.56 +2.22 -0.65];
H = filter(b,a,x2);
subplot(322);
stem(H);
title("Impulse response using filter function");
xlabel k;
ylabel("Impulse Response");
%Impulse Response using impz function
H1 = impz(b,a);
subplot(323);
stem(H1);
title("Impulse response using impz function");
xlabel k;
ylabel("Impulse Response");
%Truncating the first 32 points and finding the output
y1 = [];
for i=1:60;
    if(i>31)
        y1(i) = 0;
    else
        y1(i) = y(i);
    end
end
h = conv(y1,x_sampled);
subplot(324);
stem(h);
title("Output of truncated signal");
ylabel("Impulse Response");
xlabel k;
%New input which is summation of two sinusoids
x3 = sin(2*pi*500*t);
x4 = sin(2*pi*1500*t);
x_new = x3+x4;
x_new_sampled = [];
k=1;
for i = 1:length(x_new)
    if(mod(t(i),1/fs)==0)
        x_new_sampled(k) = x_new(i);
        k=k+1;
    end
    if(t(i)>0.008)
        break;
    end
end
subplot(325);
stem(0:length(x_new_sampled)-1,x_new_sampled);
title("Sampled version of sum of two CT Signals");
xlabel n;
ylabel x[n];
%Impulse response of the new input
b=[1 0 0 1];
a=[1 -2.56 +2.22 -0.65];
H1 = filter(b,a,x_new_sampled);
subplot(326);
stem(H1);
title("Impulse response of the new CT signal");
xlabel k;
ylabel("Impulse Response");
figure();
subplot(331)
stem(freqz(H));
title("Frequency response of filter for signal 1");
subplot(334)
stem(freqz(H1));
title("Frequency response of filter for signal 2");
subplot(332)
stem(abs(H));
title("Magnitude response of filter for signal 1");
subplot(333)
stem(angle(H));
title("Phase response of filter for signal 1");
subplot(335)
stem(abs(H1));
title("Magnitude response of filter for signal 2");
subplot(336)
stem(angle(H1));
title("Phase response of filter for signal 2");
%New signal sampled at 0.1 cycle/sample
fs2 = 5000;
t2 = linspace(0,1,fs2*100+1);
t3 = linspace(0,0.008,fs2*100+1);
x5 = sin(2*pi*f*t2);
x6 = sin(2*pi*f*t3);
subplot(337)
plot(t3,x6);
title("CT Signal");
xlabel t;
ylabel x(t);
k = 1;
x5_sampled=[];
for i = 1:length(x5)
    if(mod(t2(i),1/fs2)==0)
        x5_sampled(k) = x5(i);
        k=k+1;
    end
    if(t2(i)>0.008)
        break;
    end
end
subplot(338);
stem(0:length(x5_sampled)-1,x5_sampled);
title("Sampled at 0.1 cycle/sample");
xlabel n;
ylabel x[n];
%Adding Gaussian Noise of 5dB
out = awgn(x5_sampled,5);
subplot(339);
stem(out);
title("Signal with Noise");
xlabel n;
ylabel x[n];






