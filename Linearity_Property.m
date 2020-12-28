%Linearity Property of DFT:
clc;
clear;
close all;
N = input('How many point DFT you want?');
x1 = input('Enter the first sequence=');
x2 = input('Enter the second sequence=');
a = input('Enter the first constant=');
b = input('Enter the second constant=');
n1 = length(x1);
n2 = length(x2);
c = zeros(N);
x1 = [x1 zeros(1,N-n1)];  % makes both x1 and x2 of same
x2 = [x2 zeros(1,N-n2)];
disp(x1)
disp(x2)% dimension
x3 = a*x1;
x4 = b*x2;
x5 = x3+x4  % a*x1 + b*x2
for k = 1:N
   for n = 1:N
       w = exp((-i*2*pi*(k-1)*(n-1))/N);% W-matrix
       x(n) = w;
   end
   c(k,:) = x; % Every row of w-matrix is inserted and
         % c becomes the w matrix for n-point DFT
end
r1 = c*x1';
r2 = c*x2';
R3 = a*r1 + b*r2;
R4 = c*x5';
disp(R3);
disp(R4);
subplot(2,2,1);
stem(abs(R4));
title('DFT OF {a*x1 + b*x2}');
subplot(2,2,2);
stem(abs(R3));
title('DFT of {a*x1(k)+b*x2(k)}');


