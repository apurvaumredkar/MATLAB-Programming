%Experiment 3               Date: 4th February 2020
%Aim: Computation of DFT, IDFT and Linear & Circular Convolution

clc;
clear all;
close all;
N = 200;
x1 = zeros(1,N);
x2 = zeros(1,N);
for n=1:N
    x1(n) = 2*cos(2*pi*n/10) + cos(2*pi*n/5);
    x2(n) = n;
end
figure();
subplot(231);
stem(x1);
title("x1[n] = 2cos(2PIn/10) + cos(2PIn/5)");
xlabel n;
ylabel x[n];
subplot(234);
stem(x2);
title("x2[n] = n");
xlabel n;
ylabel x2[n];

%Finding the N-point DFT
X1 = dft(x1,N);
X2 = dft(x2,N);
subplot(232);
stem(X1);
title ("DFT of x1[n]");
xlabel n;
ylabel X1[n];
subplot(235);
stem(X2)
title ("DFT of x2[n]");
xlabel n;
ylabel X2[n];

%Finding the IDFT of the above
y1 = idft(X1,N);
y2 = idft(X2,N);
subplot(233);
stem(y1);
title ("IDFT of X1[n]");
xlabel n;
ylabel x1[n];
ylim([-2,3]);
subplot(236);
stem(y2);
title ("IDFT of X2[n]");
xlabel n;
ylabel x2[n];
ylim([0,200]);

%Linear and circular  convolution using dft and idft
a1 = [1 3 -2 4 7];
h1 = [3 1 21 -3];
n1 = length(a1);
m1 = length(h1);
N1 = n1 + m1 -1;
A1 = dft(a1,N1);
H1 = dft(h1,N1);
B1 = A1.*H1;
b1 = idft(B1,N1)
if(round(b1) == conv(a1,h1))
    disp("Linear Convolution correct")
end
cA1 = dft(a1,n1);
cH1 = dft(h1,n1);
cB1 = cA1.*cH1;
cb1 = idft(cB1,n1)
if(round(cb1) == round(cconv(a1,h1,n1)))
    disp("Circular convolution correct");
end

a2 = zeros(1,10);
h2 = zeros(1,10);
n2 = length(a2);
m2 = length(h2);
for i=1:n2
    a2(i) = i;
end
for i=1:m2
    h2(i) = power(0.5,i);
end
N2 = n2 + m2 -1;
A2 = dft(a2,N2);
H2 = dft(h2,N2);
B2 = A2.*H2;
b2 = idft(B2,N2)
if(round(b2,4) == round(conv(a2,h2),4))
    disp("Linear Convolution correct")
end
cA2 = dft(a2,n2);
cH2 = dft(h2,n2);
cB2 = cA2.*cH2;
cb2 = idft(cB2,n2)
if(round(cb2,4) == round(cconv(a2,h2,n2),4))
    disp("Circular convolution correct");
end

a3 = zeros(1,20);
h3 = zeros(1,20);
n3 = length(a3);
m3 = length(h3);
for i=1:n3
    a3(i) = sin(pi*i/20);
end
for i=1:m3
    h3(i) = power(0.25,i);
end
N3 = n3 + m3 -1;
A3 = dft(a3,N3);
H3 = dft(h3,N3);
B3 = A3.*H3;
b3 = idft(B3,N3)
if(round(b3,4) == round(conv(a3,h3),4))
    disp("Linear Convolution correct")
end
cA3 = dft(a3,n3);
cH3 = dft(h3,n3);
cB3 = cA3.*cH3;
cb3 = idft(cB3,n3)
if(round(cb3,4) == round(cconv(a3,h3,n3),4))
    disp("Circular convolution correct");
end