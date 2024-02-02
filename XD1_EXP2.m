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
nx = length(t); % Total number of samples
%Take fourier transform
f_sig_x = fft(sig_x);
% Apply fftshift to put it in the form we are used to (see documentation)
f_sig_x = fftshift(f_sig_x)/(nx/2);
% Next, calculate the frequency axis, which is defined by the sampling rate
f = linspace(-fs/2,fs/2,nx);
% fft function in Matlab returns complex numbers that has both frequency and phase information
% we will only plot absolute values of the fft transformed variables to see the frequency domain representations
bar(f, abs(f_sig_x),1,'k');
axis([-50 50 0 10]); %setting up the limits
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency Domain Representation of Different Signals');
