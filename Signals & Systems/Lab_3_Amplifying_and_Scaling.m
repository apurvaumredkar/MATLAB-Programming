%Amplifying, attenuating, time shifting, time scaling

figure()
a = -4*pi :0.1: 4*pi
subplot(3,2,1)
b = sin(a)
plot(a,b)
axis([-2*pi 2*pi -3 3])
title('x(t)')

subplot(3,2,2)
bamp = 2*sin(a)
plot(a,bamp)
axis([-2*pi 2*pi -3 3])
title('Amplified')

subplot(3,2,3)
batte = 0.5*sin(a)
plot(a,batte)
axis([-2*pi 2*pi -3 3])
title('Attenuated')

subplot(3,2,4)
bts = sin(a+2)
plot(a,bts)
axis([-2*pi 2*pi -3 3])
title('Time Shifted')

subplot(3,2,5)
btsc = sin(2*a)
plot(a,btsc)
axis([-2*pi 2*pi -3 3])
title('Time Scaling')
