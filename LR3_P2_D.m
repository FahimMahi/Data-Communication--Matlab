clc;
clear all; 
close all; 
fs=20000;
t=0:1/fs:0.01;
x1 = 2*cos(2*pi*(4*100)*t);
x2 = 27*cos(2*pi*(7*100)*t);
x3=x1+x2;
f=6;
partition = [-65.5, -35, 0, 35, 65.5];
codebook =[-85, -50, -20, 20, 50, 85 ] ;
[index,quants] = quantiz(x3,partition,codebook);
plot(t,x3,'*',t,quants,'.')
legend('Original signal','Quantized signal')