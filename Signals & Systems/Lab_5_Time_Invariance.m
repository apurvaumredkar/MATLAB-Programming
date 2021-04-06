%To check if the given the signals vary with time or not, i.e. to check
%time variance/invariance
i = [0:10]
x = [0:9,0]
u = [ones(1,11)]

y1 = [zeros(1,10),0];
y2 = [zeros(1,10),0];
y3 = [zeros(1,10),0];
%Question 1: y[n] = x[n]
for n=1:10
    y1(n) = x(n);
    y2(n) = x(n+1);
end
for n = 1:10
    y3(n) = y1(n+1);
end
if(y2 == y3)
    disp("The function is time invariant")
else
    disp("The Function is time variant")
end

figure(1)
subplot(2,2,1)
stem(i,x)
title("Signal x")
subplot(2,2,2)
stem(i,y1)
title("Signal y = x")
subplot(2,2,3)
stem(i,y2)
title("Time shifted x")
subplot(2,2,4)
stem(i,y3)
title("Time shifted y")

%Question 2 y[n] = nx[n]
for n=1:10
    y1(n) = n*x(n);
    y2(n) = n*x(n+1);
end
for n = 1:10
    y3(n) = y1(n+1);
end
if(y2 == y3)
    disp("The function is time invariant")
else
    disp("The Function is time variant")
end

figure(2)
subplot(2,2,1)
stem(i,x)
title("Signal x")
subplot(2,2,2)
stem(i,y1)
title("Signal y = nx")
subplot(2,2,3)
stem(i,y2)
title("Time shifted x")
subplot(2,2,4)
stem(i,y3)
title("Time shifted y")

%Question 3 y[n] = x[n] + u[n]
for n=1:10
    y1(n) = x(n) + u(n);
    y2(n) = x(n+1) + u(n+1);
end
for n = 1:10
    y3(n) = y1(n+1);
end
if(y2 == y3)
    disp("The function is time invariant")
else
    disp("The Function is time variant")
end

figure(3)
subplot(2,2,1)
stem(i,x)
title("Signal x")
subplot(2,2,2)
stem(i,y1)
title("Signal y = x +u[n]")
subplot(2,2,3)
stem(i,y2)
title("Time shifted x")
subplot(2,2,4)
stem(i,y3)
title("Time shifted y")

%Question 4 y[n] = nx[n] + n^2.x[n]
for n=1:10
    y1(n) = n*x(n) + n*n*x(n);
    y2(n) = n*x(n+1) + n*n*x(n+1);
end
for n = 1:10
    y3(n) = y1(n+1);
end
if(y2 == y3)
    disp("The function is time invariant")
else
    disp("The Function is time variant")
end

figure(4)
subplot(2,2,1)
stem(i,x)
title("Signal x")
subplot(2,2,2)
stem(i,y1)
title("Signal y = nx + n^2x")
subplot(2,2,3)
stem(i,y2)
title("Time shifted x")
subplot(2,2,4)
stem(i,y3)
title("Time shifted y")

%Question 5 y[n] = e^(n-1).x[n]
for n=1:10
    y1(n) = exp(n-1)*x(n);
    y2(n) = exp(n-1)*x(n+1);
end
for n = 1:10
    y3(n) = y1(n+1);
end
if(y2 == y3)
    disp("The function is time invariant")
else
    disp("The Function is time variant")
end

figure(5)
subplot(2,2,1)
stem(i,x)
title("Signal x")
subplot(2,2,2)
stem(i,y1)
title("Signal y = e^(n-1).x")
subplot(2,2,3)
stem(i,y2)
title("Time shifted x")
subplot(2,2,4)
stem(i,y3)
title("Time shifted y")







