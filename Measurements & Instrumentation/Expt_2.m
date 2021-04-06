%filtering noisy data using moving average and exp weighted MA filters
%@@@Author: Apurva Umredkar (BT18ECE086)
clc;
clear;
close all;

for k = 1:1:100
    x_step(k) = 50;
    y_step(k) = 50 +2*randn(1);
    x_ramp(k) = k;
    y_ramp(k) = k + 5*randn(1); 
end

%STEP SIGNAL
figure(1);
subplot(231);
plot(x_step);
hold;
plot(y_step);
title 'Step Signal and added Noise'
xlabel 'X'
ylabel 'Y'

%moving average filter
y1 = moving_average(y_step,5);
subplot(232);
plot(y1);
title 'Moving Average Filter (n=5)'
xlabel 'X'
ylabel 'Y'
y2 = moving_average(y_step,10);
subplot(233);
plot(y2);
title 'Moving Average Filter (n=10)'
xlabel 'X'
ylabel 'Y'

%exponentially weighted moving average filter
y3 = expMA(y_step,5);
subplot(235);
plot(y3);
title 'Exponentially Weighted Moving Average Filter (n=5)'
xlabel 'X'
ylabel 'Y'
y4 = expMA(y_step,10);
subplot(236);
plot(y4);
title 'Exponentially Weighted Moving Average Filter (n=10)'
xlabel 'X'
ylabel 'Y'

%RAMP SIGNAL
figure(2);
subplot(231);
plot(x_ramp);
hold;
plot(y_ramp);
title 'Ramp Signal with added Noise'
xlabel 'X'
ylabel 'Y'

%moving average filter
y1 = moving_average(y_ramp,5);
subplot(232);
plot(y1);
title 'Moving Average Filter (n=5)'
xlabel 'X'
ylabel 'Y'
y2 = moving_average(y_ramp,10);
subplot(233);
plot(y2);
title 'Moving Average Filter (n=10)'
xlabel 'X'
ylabel 'Y'

%exponentially weighted moving average filter
y3 = expMA(y_ramp,5);
subplot(235);
plot(y3);
title 'Exponentially Weighted Moving Average Filter (n=5)'
xlabel 'X'
ylabel 'Y'
y4 = expMA(y_ramp,10);
subplot(236);
plot(y4);
title 'Exponentially Weighted Moving Average Filter (n=10)'
xlabel 'X'
ylabel 'Y'

function ret = moving_average(a,n)
    for k=1:1:100
        p = k-n;
        if(k==1)
            ret(k) = a(k)/n;
        elseif(p<=0)
            ret(k) = ret(k-1) + a(k)/n;
        else
            ret(k) = ret(k-1) + (a(k) - a(p))/n;
        end
    end
end

function  ret = expMA(a,n)
    for k = 1:1:100
        if(k==1)
            ret(k) = a(k)/(n+1);
        else
            ret(k) = a(k)/(n+1) + ret(k-1)*n/(n+1);
        end
    end
end