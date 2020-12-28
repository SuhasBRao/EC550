%PROGRAM FOR DTFT OF a sequence:
W = -pi:.01:pi;
x = input('Enter the input sequence:');
n = 0:length(x)-1;
for i = 1:length(W)
   X(i) = 0;
   for k = 1:length(x)
       X(i) = X(i) + x(k).*exp(-1i.*W(i).*n(k));
   end
end
subplot(2,2,1);
stem(n,x);
title('input');

subplot(2,2,2);
plot(W,X,'linewidth',1);
title('DTFT');

subplot(2,2,3);
plot(W,abs(X));
title('magnitude spectrum');

subplot(2,2,4);
plot(W,angle(X));
title('Phase spectrum');
