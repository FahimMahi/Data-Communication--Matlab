clc;
clear all; 
close all; 
A1 = 02;
A2 = 27;
CDE = 429;
fs=40000;
t=0:1/fs:1-1/fs;
x1 = A1*cos(2*pi*(CDE*100)*t);
n=4; % given
x=3.2;
L=(2^n)-1;
delta= (max(x1)-min(x1))/L;
