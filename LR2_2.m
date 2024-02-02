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
plot(t,x1); 
hold on;
plot(t,x2)
hold off;