%Experiment 6: Radix 2 DIT Approach for DFT                 %Date: 11/03/2020
clc;
clear all;
close all;

x = input('Enter array x[n]: ');
N = length(x);
if(N==1)
    x = [x 0];
end
N = length(x);
while(mod(log2(N),1)~=0)
    N = N+1;
end
x = [x zeros(1,N-length(x))];
N = length(x);

X = radix2dit(x,N);



