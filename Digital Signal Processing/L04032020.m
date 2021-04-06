%Experiment 5: Divide and Conquer Approach for DFT        %Date: 04/03/2020

clc;
clear all;
close all;
x = cos(2*[1:200]*pi/4); %Signal
figure();
subplot(311);
stem(x);
title("Signal: cos(2nPi/4)");
xlabel n;
ylabel x[n];
subplot(312)
stem(dividenconquer(x));
title("DFT using Divide and Conquer Approach");
xlabel n; 
ylabel X[n];
subplot(313)
stem(fft(x));
title("DFT using MATLAB inbuilt FFT function");
xlabel n; 
ylabel X[n];
