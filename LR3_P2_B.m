clc;
clear all; 
close all; 
fs=20000;
d=0.003;
t=-d:1/fs:d;
x1 = 2*cos(2*pi*(4*100)*t);
x2 = 27*cos(2*pi*(7*100)*t);
x3=x1+x2;
plot(t,x3,'r');
xlabel('Time');
ylabel('Amplitude');