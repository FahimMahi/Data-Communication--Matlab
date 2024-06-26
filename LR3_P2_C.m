clc;
clear all; 
close all; 
fs=100;
t=0:1/fs:1-1/fs;
x1 = 2*cos(2*pi*(4*100)*t);
x2 = 27*cos(2*pi*(7*100)*t);
x3=x1+x2;
x= fft(x3);
fx3=fftshift(x)/(fs/2);
f=(fs/2)*linspace(-3,3,fs);
plot(f,abs(fx3));
axis ([-200 200 0 58]);
bandwidth = obw(x3,fs);
