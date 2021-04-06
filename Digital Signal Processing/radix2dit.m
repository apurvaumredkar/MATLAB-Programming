function out = radix2dit(x,N)
if(length(x)==1)
    out = dft(x,1);
    return
    ends
xo = x(1:2:N);
xe = x(2:2:N);
Xo = dft(xo,N/2);
Xe = dft(xe,N/2);

