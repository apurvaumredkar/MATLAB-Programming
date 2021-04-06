function out = overlap_save(x,h)
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
x = [zeros(1,m-1) x];
for i=1:l:N
    if(i==1)
        xi = x(1:l);
    else
        xi = x(i-(m-1):n+i-1);
    end
    Xi = fft(xi);
    H = fft(h);
    Yi = Xi.*H;
    yi = ifft(Yi);
    y = [y yi(m:length(yi))];
end
out = y;









