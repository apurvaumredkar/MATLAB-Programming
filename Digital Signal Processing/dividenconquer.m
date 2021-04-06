function out = dividenconquer(x)
N = length(x);
l = unique(factor(N));
L = 1;
for i= 1:length(l)
    L=L*l(i);
end
M = N/L;
x = reshape(x,L,M);
for i=1:L
    x(i,:) = dft(x(i,:),M);
end
for p = 1:L
    for q = 1:M
        x(p,q) = x(p,q)*exp(-1i*2*pi*(p-1)*(q-1)/N);
    end
end
for i=1:M
    x(:,i) = dft(x(:,i),L);
end
X = [];
for i = 1:L
    X = [X x(i,:)];
end
out = X;