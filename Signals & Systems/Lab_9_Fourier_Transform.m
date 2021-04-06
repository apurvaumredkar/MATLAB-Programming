%To find the fourier transform of any dicrete time signal, find the mag
%spectrum, a=phase spectrum and verify the transform by rebuilding the
%signal using the coefficients

clc
n = 1:10;
x = [1 4 2 5 3 9 7 6 8 2];
figure(1);
subplot(2,3,1);
stem(n,x);
title('Input Signal');

N = length(x);
X = zeros(1,N); %Fourier Transform
for i = 1:N
    for k = 1:N
        X(i) = X(i) + x(k).*exp(-2i*pi*k*i/N);
    end
end
X
subplot(2,3,2);
stem(n,X);
title('Fourier Transform');

amp_X = abs(X);
ang_X = angle(X);

subplot(2,3,3);
stem(n,amp_X);
title('Amplitude Spectrum')

subplot(2,3,4);
stem(n,ang_X);
title('Phase Spectrum')

%Verifying the FT by rebuilding the signal
y = zeros(1,N);
for i = 1:N
    for k = 1:N
        y(i) = y(i) + X(k).*exp(2i*pi*i*k/N);
    end
end
y = y/N
subplot(2,3,5);
stem(n,y)
title('Rebuilding original')




