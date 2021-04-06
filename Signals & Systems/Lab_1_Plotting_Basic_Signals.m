%PLotting Basic Signals

%1. Unit Impulse Signal
x = -3:1:3;
y = [0 0 0 1 0 0 0];
figure(1);
subplot(3,2,1);
stem(x,y);
xlabel('t');
ylabel('x(t)');
title('Unit Impulse Signal');
figure(2);
subplot(3,2,1);
plot(x,y);
xlabel('t');
ylabel('x(t)');
title('Unit Impulse Signal');

%2. Unit Step Signal 
x = -10:1:10;
y = [zeros(1,10),ones(1,11)];
figure(1);
subplot(3,2,2);
stem(x,y);
xlabel('t');
ylabel('x(t)');
title('Unit Step Signal');
figure(2);
subplot(3,2,2);
plot(x,y);
xlabel('t');
ylabel('x(t)');
title('Unit Step Signal');

%3. Exponential Signal
x = 0:0.1:5;
y = 5*exp(-2*x);
figure(1);
subplot(3,2,3);
stem(x,y);
xlabel('t');
ylabel('x(t)');
title('Exponential Signal');
figure(2);
subplot(3,2,3);
plot(x,y);
xlabel('t');
ylabel('x(t)');
title('Exponential Signal');

%4. Sinusoidal Signal
x = 0:0.1:5;
y = sin(x);
figure(1);
subplot(3,2,4);
stem(x,y);
xlabel('t');
ylabel('x(t)');
title('Sinusoidal Signal');
figure(2);
subplot(3,2,4);
plot(x,y);
xlabel('t');
ylabel('x(t)');
title('Sinusoidal Signal');

%5. Ramp Signal
x = 0:0.5:10;
y = x;
figure(1);
subplot(3,2,5);
stem(x,y);
xlabel('t');
ylabel('x(t)');
title('Ramp Signal');
figure(2);
subplot(3,2,5);
plot(x,y);
xlabel('t');
ylabel('x(t)');
title('Ramp Signal');

%6. Random Signal
x = -6:0.5:6;
y = 2*x*rand();
figure(1);
subplot(3,2,6);
stem(x,y);
xlabel('t');
ylabel('x(t)');
title('Random Signal');
figure(2);
subplot(3,2,6);
plot(x,y);
xlabel('t');
ylabel('x(t)');
title('Random Signal');








