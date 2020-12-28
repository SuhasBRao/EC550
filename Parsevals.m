clc;
clear all;
close all;
xn=input('Enter the sequence:');
N=input('Enter the value of N');
x=0;
X=[];
for k=0:N-1
for n=0:N-1
x= x+xn(n+1)*exp(-1j*2*pi*n*k/N);
end
X=[X x];
x=0;
end
LHS=sum((xn.*xn));	%performing element wise multiplication
disp("Energy in time domain");
disp(LHS);
RHS=sum(abs(X.*X))/N;
disp("Energy in frequency domain");
disp(RHS);
disp("Thus Parseval's theorem is verified");