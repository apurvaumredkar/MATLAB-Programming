s=zeros(1,10);
lhs=0;
rhs=0;
for i = 1:10
    x(i)=cos(pi*i/4);
end
N=length(x);
for k = 1:N
    for n = 1:N
        s(k) = s(k) + x(n).* exp((-2*pi*j*n*k)/N);
    end
end
a = s/N;
for l = 1:N
    lhs = lhs + abs(a(l)).^2;
end
for m = 1:N
    rhs = rhs + abs(x(m)).^2;
end
rhs=rhs/N;
if(abs(lhs - rhs)< 0.00001)
    display("Parseval's Theorem is verified")
else
    display("Parseval's Theorem is False")
end


s=zeros(1,10);
lhs=0;
rhs=0;
for i = 1:10
    x(i)=sin(pi*i/4);
end
N=length(x);
for k = 1:N
    for n = 1:N
        s(k) = s(k) + x(n).* exp((-2*pi*j*n*k)/N);
    end
end
a = s/N;
for l = 1:N
    lhs = lhs + abs(a(l)).^2;
end
for m = 1:N
    rhs = rhs + abs(x(m)).^2;
end
rhs=rhs/N;
if(abs(lhs - rhs)< 0.00001)
    display("Parseval's Theorem is verified")
else
    display("Parseval's Theorem is False")
end

s=zeros(1,5);
lhs=0;
rhs=0;
x = [1 2 3 2 4];
N=length(x);
for k = 1:N
    for n = 1:N
        s(k) = s(k) + x(n).* exp((-2*pi*j*n*k)/N);
    end
end
a = s/N;
for l = 1:N
    lhs = lhs + abs(a(l)).^2;
end
for m = 1:N
    rhs = rhs + abs(x(m)).^2;
end
rhs=rhs/N;
if(abs(lhs - rhs)< 0.00001)
    display("Parseval's Theorem is verified")
else
    display("Parseval's Theorem is False")
end