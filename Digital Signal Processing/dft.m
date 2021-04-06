function X = dft(x,N)
L = length(x);
if(L<N)
    for i=1:N-L
        x(L+i) = 0;
        i=i+1;
    end
elseif(L>N)    
    for i=1:N
        x1(i) = x(i);
    end
    x = x1;
end
X = zeros(1,N);
for i=1:N
    for j=1:N
        X(i) = X(i) + x(j)*exp(-2i*pi*(i-1)*(j-1)/N);
    end
end


