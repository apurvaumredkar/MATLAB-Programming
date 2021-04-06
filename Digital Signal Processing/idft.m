function x = idft(X,N)
L = length(X);
if(L<N)
    for i=1:N-L
        X(L+i) = 0;
        i=i+1;
    end
elseif(L>N)    
    for i=1:N
        x1(i) = X(i);
    end
    X = x1;
end
x = zeros(1,N);
for i = 1:N
    for j = 1:N
        x(i) = x(i)+X(j)*exp(2i*pi*(i-1)*(j-1)/N);
    end
end
x = x/N;