clc;
clear all; 
close all; 
fs=100000;
d=0.001;
t=-d:1/fs:d; 
A1=20; 
A2=1;
x1 = 20*cos(2*pi*(4297)*t + (20*pi/180));
x2 = cos(2*pi*(4297)*t + (30*pi/180));
x3=x1+x2;
subplot(3,1,1)
plot(t,x1,'b')
xlabel('Time in Second')
ylabel('Amplitude')
title('X1(t)')
subplot(3,1,2)
plot(t,x2,'r')
xlabel('Time in Second')
ylabel('Amplitude')
title('x2(t)')
subplot(3,1,3)
plot(t,x3,'g')
xlabel('Time in Second')
ylabel('Amplitude')
title('X3(t)=X1(t)+X2(t)')