clc;
close all;
clear all;
xn=input('Enter a real sequence=');
N=input('Enter the value of N=');
X=[];
C=[];
Y=[];
Z=[];
P=[];
x=0;
for k=0:N-1
for n=0:N-1
x= x+xn(n+1)*exp(-1j*2*pi*n*k/N);
end
X=[X x];
x=0;
end
disp('DFT X(k)')
disp(X)
y=0;
for k=0:N-1
for n=0:N-1
y= y+xn(n+1)*exp(-1j*2*pi*n*-k/N);
end
Y=[Y y];
y=0;
C= conj(Y);
end
disp('DFT X(-k)')
disp(C)
z=0;
for k=0:N-1
for n=0:N-1
z= z+xn(n+1)*exp(-1j*2*pi*n*(N-k)/N);
end
Z=[Z y];
y=0;
P= conj(Y);
end
disp('DFT X(N-k)')
disp(P)
m=0;
if(X==P)
m=1;
else
m=0;
end
if(m==1)
disp('It is symmetric')
else
disp('It is not symmetric');
end