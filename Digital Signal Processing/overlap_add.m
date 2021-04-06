function out = overlap_add(x,h)
m = length(h);
l = power(2,m);
n = l-m+1;
h = [h zeros(1,n-1)];
N = length(x);
a = mod(N,l);
if(a~=0)
    x = [x zeros(1,l-a)];
end
N = length(x);
y = [];

for i = 1:l:N
    if(i==1)
        xi = [x(i:n) zeros(1,m-1)];
    else
        xi = [x(i-(m-1):i+n-m) zeros(1,m-1)];
    end
    Xi = fft(xi);
    H = fft(h);
    Yi = Xi.*H;
    yi = ifft(Yi);
    if(i==1)
        y = [y yi];
    else
        y = [y(1:length(y)-(m-1)) y(length(y)-(m-1)+1:length(y))+yi(1:m-1) yi(m:length(yi))];
    end
    
end
out = y(1:length(y)-(m-1));
