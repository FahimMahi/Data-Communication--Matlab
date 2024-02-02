clc
clear all
x = linspace(0,12*pi,100)
y= cos(x);
plot(x,y)
title('Cos Wave')
xlabel('Time')
ylabel('Value')
axis([0 2*pi -1.5 1.5])
text(2,0,'Fahim Mahmud Bhuiyan: 20-42970-1')