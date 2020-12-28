clc;
close all;
clear all;
t=0:0.1:6;
T = input('Enter the time period:');
fm=1/T;
x=sin(2*pi*fm*t);
figure(1)
subplot(2,2,1)
plot(t,x)
title("Msg Signal")
xlabel('t');
ylabel('x(t)')
n=0:0.1:6;
fs1=2*fm;
y1=sin(2*pi*fm*n/fs1); 
subplot(2,2,2)
stem(n,y1)
title("Perfect Sampling")
xlabel('n')
ylabel('y(n)')
fs2=1*fm;
y2=sin(2*pi*fm*n/fs2);
subplot(2,2,3);
stem(n,y2);
title("Under Sampling")
xlabel('n')
ylabel('y(n)')
fs3=5*fm;
y3=sin(2*pi*fm*n/fs3);
subplot(2,2,4)
stem(n,y3)
title("over sampling")
xlabel('n')
ylabel('y(n)')
t=0:0.1:6;
a= fftshift(fft(x));
b= fftshift(fft(y1));
c= fftshift(fft(y2));
d= fftshift(fft(y3));
figure(2)
subplot(2,2,1)
plot(t,abs(a))
title("Msg signal")
subplot(2,2,2)
plot(n,abs(b))
title("when fs = 2fm")
subplot(2,2,3)
plot(n,abs(c))
title("when fs <2fm")
subplot(2,2,4)
plot(n,abs(d))
title("when fs >2fm")