clc;
clear all; 
close all; 
A1 = 02;
A2 = 27;
CDE = 429;
fs=20000;
t=0:1/fs:0.003;
x1 = A1*cos(2*pi*(CDE*100)*t);
n=4; % given
L=(2^n)-1;
delta= (max(x1)-min(x1))/L;
i=round((x1-min(x1))/delta);
xq=min(x1)+i.*delta;
subplot(3,1,1)
plot(t,x1,'R');
xlabel('Time')
ylabel('X[n]')
subplot(3,1,2)
stem(t,x1,'b')
xlabel('Time')
ylabel('X[n]')
subplot(3,1,3)
stairs(t,xq,'b');
title('Quantized Signal')
xlabel('Time')
ylabel('Amplitude')