A=2;
B=0;
C=4;
D=2;
E=4;
F=9;
G=7;
H=1;
K1=A+B;
K2=G+H+2;
J1=(pi*29)/180; 
J2=pi/6; 
t=0:0.0001:3*(1/18); 
frq1=E+F+5; 
x1=K1*cos(2*pi*frq1*1*t+J1);
plot(t, x1) 
xlabel('Time') 
ylabel('Amplitude') 
title('X1') 
figure
frq2=C+D+5; x2=K2*cos(2*pi*frq2*t+J2); 
plot (t, x2) 
xlabel('Time') 
ylabel('Amplitude') 
title('X2')
