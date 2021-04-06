%Plotting even and odd signals
%Function: y = root of x
figure()
subplot(3,2,1)
a = -10:0.1:10
%x(t)
b = power(a,0.5)
plot(a,b)
title('x(t)')


%x(-t)
bn = power(-a,0.5)
subplot(3,2,2)
plot(a,bn)
title('x(-t)')

%even component
be = (b+bn)/2
subplot(3,2,3)
plot(a,be)
title('Even Component')

%odd component
bo= (b-bn)/2
subplot(3,2,4)
plot(a,bo)
title('Odd Component')

%reconstruct
br = be+bo
subplot(3,2,5)
plot(a,br)
title('Reconstructing')

