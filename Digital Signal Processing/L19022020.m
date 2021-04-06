%Experiment 4:                                 Date: 19/02/2020
%Overlap Save and Overlap Add Approach

clc;
clear all;
close all;

x = [3 0 -2 0 2 1 0 -2 1 0 3 0 -2];
h = [2 2 1];

y1 = overlap_save(x,h)
y2 = overlap_add(x,h)
y3 = cconv(x,h);
y3 = y3(1:length(x)-1)
figure();
subplot(121);
stem(x);title "Signal";xlabel n;ylabel x[n]
subplot(122);
stem(h);title("Impulse Response");xlabel n;ylabel h[n]
figure();
subplot(131);
stem(y1);title("Circular Convolution using Overlap Save");xlabel n; ylabel y[n];

subplot(132);
stem(y2);title("Circular Convolution using Overlap Add");xlabel n; ylabel y[n];

subplot(133);
stem(y3);title("Circular Convolution using CCONV Function");xlabel n; ylabel y[n];

if(round(y1) == round(y2))
    if(round(y2) == round(y3))
        if(round(y3) == round(y1))
            disp("Circular Convolution correct")
        end
    end
end

