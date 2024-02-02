clc
clear all
close all
fs = 5000; % Sampling frequency
t = 0:1/fs:2; % Time duration
a1 = 7;
a2 = 6;
a3 = 7;
f1 = 7;
f2 = 6;
f3 = 7;
%signal
sig_x = a1*cos(2*pi*f1*t) + a2*sin(2*pi*f2*t) + a3*cos(2*pi*f3*t);
partition = -1.5:1.5; % Length 4, to represent 5 intervals
codebook = -2:2; % Length 5, one entry for each interval
% Quantize.
[index,quants] = quantiz(sig_x,partition,codebook);
figure
plot(t,sig_x,'x',t,quants,'.');
legend('Original signal','Quantized signal');
title('Original signal vs Quantized signal');
