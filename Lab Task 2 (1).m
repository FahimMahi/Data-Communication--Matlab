clc;
clear all;
close all;

fs = 1000; % Sampling frequency
t = 0:1/fs:1-1/fs; % Time duration
f1 = 5; % Frequency of first signal
f2 = 15; % Frequency of second signal
f3 = 25; % Frequency of second signal
A1 = 25; % Amplitude of first signal
A2 = 15; % Amplitude of second signal
A3 = 5; % Amplitude of second signal

x1 = A1*sin(2*pi*f1*t); % First Signal
x2 = A2*sin(2*pi*f2*t); % Second Signal
x3 = A3*sin(2*pi*f3*t); % Second Signal
%Plotting both signals in time domain
plot(t,x1,'k--o','LineWidth',1.5)
hold on
plot(t,x2,'b-*','LineWidth',2)
hold off
xlabel('Time in Seconds')
ylabel('Amplitude in Volts')
title('Signals of Different Frequencies')

%Take fourier transform
fx1 = fft(x1);
fx2 = fft(x2);
fx3 = fft(x3);

%apply fftshift to put it in the form we are used to (see 
documentation)
fx1 = fftshift(fx1)/(fs/2);
fx2 = fftshift(fx2)/(fs/2);
fx3 = fftshift(fx3)/(fs/2);

