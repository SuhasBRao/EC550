clc;
clear;
close all;
x = input('Enter the input sequence x(n):');
N = input('Enter the length of DFT N:');

X = fft(x,N);
n = 0:length(x)-1;
subplot(3,2,1);
stem(n,x);
title('Input sequence');
subplot(3,2,2);
n = 0:length(X) - 1;
stem(n,X);

disp('DFT OF INPUT SEQUENCE IS');
disp(X);
title('DFT');

subplot(3,2,3);
stem(n,abs(X));
%disp(abs(X))
title('MAGNITUDE SPECTRUM');

subplot(3,2,4);
stem(n,angle(X));
title('Phase spectrum');

xr = ifft(X,N);
subplot(3,2,5);
stem(n,abs(xr));
title('IDFT')
disp('IDFT of input sequence is');
disp(xr);