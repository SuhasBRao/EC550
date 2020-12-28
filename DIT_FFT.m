clc;  
clear;
x=input('enter x[n]:');
N=length(x);
levels=nextpow2(N);
xn=[x,zeros(1,(2^levels)-N)];
x=bitrevorder(xn)
N=length(xn);
tw=cos(2*pi*(1/N)*(0:N/2-1))-j*sin(2*pi*(1/N)*(0:N/2-1));
for level=1:levels;
    L=2^level;
    twlvl=tw(1:N/L:N/2);
    for k=0:L:N-L;
        for n=0:L/2-1;
            A=x(n+k+1);
            B=x(n+k+(L/2)+1)*twlvl(n+1);
            x(n+k+1)=A+B;
            x(n+k+(L/2)+1)=A-B;
         end
    end
    x
end
XK=x