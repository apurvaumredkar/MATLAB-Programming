%finding regression models and comparing graphs
%@@@Author: Apurva Umredkar (BT18ECE086)
clc;
clear;
close all;

%data
x = 1:1:10
y = [1,3,5,8,11,16,17,23,32,38]

%linear regression
%y = A1x +A0;   to find A1 and A0

arr1 = [10 sumofpower(x,1);
    sumofpower(x,1) sumofpower(x,2)];

arr1 = inv(arr1);
arr2 = [sumofpower(y,1);sopXmulY(x,1,y)];
coeff = arr1*arr2
eqn = coeff(1) + coeff(2)*x;
figure(1);
subplot(221);
stem(x,y);
hold;
plot(x,eqn);
title 'Linear Regression';
xlabel 'X';
ylabel 'Y';

%quadratic regression
%y = A2x^2 +A1x +A0;   to find A2, A1 and A0

arr1 = [10 sumofpower(x,1) sumofpower(x,2);
    sumofpower(x,1) sumofpower(x,2) sumofpower(x,3);
    sumofpower(x,2) sumofpower(x,3) sumofpower(x,4)];

arr1 = inv(arr1);
arr2 = [sumofpower(y,1);sopXmulY(x,1,y); sopXmulY(x,2,y)];

coeff = arr1*arr2
eqn = coeff(1) + coeff(2)*x + coeff(3)*power(x,2);
subplot(222);
stem(x,y);
hold;
plot(x,eqn);
title 'Quadratic Regression';
xlabel 'X';
ylabel 'Y';

%cubic regression
%y = A3*x^3 + A2x^2 +A1x +A0;   to find A3, A2, A1 and A0

arr1 = [10 sumofpower(x,1) sumofpower(x,2) sumofpower(x,3);
    sumofpower(x,1) sumofpower(x,2) sumofpower(x,3) sumofpower(x,4);
    sumofpower(x,2) sumofpower(x,3) sumofpower(x,4) sumofpower(x,5);
    sumofpower(x,3) sumofpower(x,4) sumofpower(x,5) sumofpower(x,6)];

arr1 = inv(arr1);
arr2 = [sumofpower(y,1);sopXmulY(x,1,y); sopXmulY(x,2,y); sopXmulY(x,3,y)];

coeff = arr1*arr2
eqn = coeff(1) + coeff(2)*x + coeff(3)*power(x,2) + coeff(4)*power(x,3);
subplot(223);
stem(x,y);
hold;
plot(x,eqn);
title 'Cubic Regression';
xlabel 'X';
ylabel 'Y';

%4th order regression
%y = A4*x^4 + A3*x^3 + A2x^2 +A1x +A0;   to find A4,A3,A2,A1 and A0

arr1 = [10 sumofpower(x,1) sumofpower(x,2) sumofpower(x,3) sumofpower(x,4);
    sumofpower(x,1) sumofpower(x,2) sumofpower(x,3) sumofpower(x,4) sumofpower(x,5);
    sumofpower(x,2) sumofpower(x,3) sumofpower(x,4) sumofpower(x,5) sumofpower(x,6);
    sumofpower(x,3) sumofpower(x,4) sumofpower(x,5) sumofpower(x,6) sumofpower(x,7);
    sumofpower(x,4) sumofpower(x,5) sumofpower(x,6) sumofpower(x,7) sumofpower(x,8)];

arr1 = inv(arr1);
arr2 = [sumofpower(y,1);sopXmulY(x,1,y); sopXmulY(x,2,y); sopXmulY(x,3,y); sopXmulY(x,4,y)];

coeff = arr1*arr2
eqn = coeff(1) + coeff(2)*x + coeff(3)*power(x,2) + coeff(4)*power(x,3) + coeff(5)*power(x,4);
subplot(224);
stem(x,y);
hold;
plot(x,eqn);
title '4th Order Regression';
xlabel 'X';
ylabel 'Y';

%this function will return sum of X/X^2/X^3 depending on the value of n
function ret = sumofpower(a,n)
    ret = 0;
    for m = 1:length(a)
        ret = ret + power(a(m),n);
    end
end

%this function will return sum of X*Y/X^2 *Y/X^3* Y....depending on the value of n
function ret = sopXmulY(a,n,b)
    ret = 0;
    for m = 1:length(a)
        ret = ret + power(a(m),n)*b(m);
    end
end

