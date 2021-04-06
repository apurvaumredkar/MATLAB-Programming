%To find the convolution of the given functions

%Question 1
figure(1);
x = [1,2,3,4];
h = [0,2,2,2];
y = conv(x,h)
n = 0:3;
subplot(1,3,1);
stem(n,x);
title('x[n]');
subplot(1,3,2);
stem(n,h);
title('h[n]');
n1 = 0:length(y)-1;
subplot(1,3,3);
stem(n1,y);
title('Convolution y[n] = x[n]*h[n]');

%Question 2
figure(2);
x = [1,2,3,4];
h = [1,2,3,4];
y = conv(x,h)
n = 0:3;
subplot(1,3,1);
stem(n,x);
title('x[n]');
subplot(1,3,2);
stem(n,h);
title('h[n]');
n1 = 0:length(y)-1;
subplot(1,3,3);
stem(n1,y);
title('Convolution y[n] = x[n]*h[n]');

%Question 3
figure(3);
x = [ones(1,7)]-[zeros(1,2),ones(1,5)];
h = [ones(1,7)]-[zeros(1,3),ones(1,4)];
y = conv(x,h)
n = 0:6;
subplot(1,3,1);
stem(n,x);
title('x[n] = u[n] - u[n-2]');
subplot(1,3,2);
stem(n,h);
title('h[n] = u[n] - u[n-3]');
n1 = 0:length(y)-1;
subplot(1,3,3);
stem(n1,y);
title('Convolution y[n] = x[n]*h[n]');

%Question 4
figure(4);
n =0:6;
x = exp(-3*n).*[ones(1,7)];
h = [zeros(1,2),ones(1,5)];
y = conv(x,h)
subplot(1,3,1);
stem(n,x);
title('x[n] = exp(-3*n)*u[n]');
subplot(1,3,2);
stem(n,h);
title('h[n] = u[n-2]');
n1 = 0:length(y)-1;
subplot(1,3,3);
stem(n1,y);
title('Convolution y[n] = x[n]*h[n]')
 












