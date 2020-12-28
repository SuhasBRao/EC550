%CIRCULAR TIME SHIFT
clc;
clear all;
close all;
x = input('Enter the input sequence:');
N = input('Enter the length of the DFT N=');
n=0:(N-1);
k=0:(N-1);
len=length(x);
if N>len
   x=[x zeros(1,N-len)];
elseif N<len
   x=x(1:N);
end
i=sqrt(-1);
w=exp(-i*2*pi/N);
nk=n'*k;
W=w.^nk;

y = circshift(x,[2]);
subplot(3,2,1);
stem(k,x);
title('Input sequence');
hold on;
subplot(3,2,2);
stem(k,y);
title('shifted signal');
%dft of signal

X1=x*W;
disp(X1);
Y1 = x*W
%plotting phase of these two signals
subplot(3,2,3);
stem(k,angle(X1));
title('phase of X1');
hold on;
subplot(3,2,4);
stem(k,angle(Y1));
title('Phase of Y1');
% plotting magnitude of these two functions
subplot(3,2,5);
stem(k,abs(X1));
title('mag of X1');
hold on;
subplot(3,2,6);
stem(k,abs(Y1));
title('mag of Y1');
