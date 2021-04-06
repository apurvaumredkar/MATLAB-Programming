%To find the fourier series coefficients for the given functions
%1 x = cos(nPi/4)
%2 x = sin(nPI/4)
%3 x = [1 2 3 2 4]


for n = 1:5
    x(n) = cos(n*pi/4);
end
s = zeros(1,5);
N = length(x);
for k = 1:N
    for n = 1:N
        s(k) = s(k) + x(n).*exp((-i*2*pi*n*k)/N);
    end
end
a = s/N
mag_a = abs(a);
ang_a = angle(a);
figure(1);
subplot(2,2,1);
ax = 1:5;
stem(ax,x);
title("Input Signal");
subplot(2,2,2);
stem(ax,a);
title('Fourier Series Coefficients');
subplot(2,2,3);
stem(ax,mag_a);
title('Magnitude Spectrum')
subplot(2,2,4);
stem(ax,ang_a);
title('Phase Spectrum');
for n = 1:5
    x(n) = cos(n*pi/4);
end
s = zeros(1,5);
N = length(x);
for k = 1:N
    for n = 1:N
        s(k) = s(k) + x(n).*exp((-i*2*pi*n*k)/N);
    end
end
a = s/N
mag_a = abs(a);
ang_a = angle(a);
figure(1);
subplot(2,2,1);
ax = 1:5;
stem(ax,x);
title("Input Signal");
subplot(2,2,2);
stem(ax,a);
title('Fourier Series Coefficients');
subplot(2,2,3);
stem(ax,mag_a);
title('Magnitude Spectrum')
subplot(2,2,4);
stem(ax,ang_a);
title('Phase Spectrum');



%q2
for n = 1:5
    x(n) = sin(n*pi/4);
end
s = zeros(1,5);
N = length(x);
for k = 1:N
    for n = 1:N
        s(k) = s(k) + x(n).*exp((-i*2*pi*n*k)/N);
    end
end
a = s/N
mag_a = abs(a);
ang_a = angle(a);
figure(2);
subplot(2,2,1);
ax = 1:5;
stem(ax,x);
title("Input Signal");
subplot(2,2,2);
stem(ax,a);
title('Fourier Series Coefficients');
subplot(2,2,3);
stem(ax,mag_a);
title('Magnitude Spectrum')
subplot(2,2,4);
stem(ax,ang_a);
title('Phase Spectrum');


%q3

x = [1 2 3 2 4]
s = zeros(1,5);
N = length(x);
for k = 1:N
    for n = 1:N
        s(k) = s(k) + x(n).*exp((-i*2*pi*n*k)/N);
    end
end
a = s/N
mag_a = abs(a);
ang_a = angle(a);
figure(3);
subplot(2,2,1);
ax = 1:5;
stem(ax,x);
title("Input Signal");
subplot(2,2,2);
stem(ax,a);
title('Fourier Series Coefficients');
subplot(2,2,3);
stem(ax,mag_a);
title('Magnitude Spectrum')
subplot(2,2,4);
stem(ax,ang_a);
title('Phase Spectrum');

    
    
    
    
    
    