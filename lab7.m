clc;
clear;
close all;
N=7;
c=[0 0 1 0 1 1 1];

for i=1:length(c)
    if c(i)==0
        cm(i)=-1;
    else
        cm(i)=1;
    end 
end

b=randi([0,1],1,2);

i= 1;
l= 1/N;
s= 700;
t= 0:1/s:length(b)-1/s;

for j=1:length(t)
    if t(j)<=1
        y(j)=min(i);
    else
        i=i+1;
        l=l+1/N;

    end
end

figure(1);
subplot(311);
plot(t,y);
axis([0 length(b) -2 2]);
xlable('time');
ylable('amp');
title('DSSS baseband signal')


c1= cos(2*pi*10*t);
subplot(312);
plot(t, c1);
axis([0 length(b) -2 2]);
xlable('time');
ylable('amp');
title('sinusoidal signal')


x=y.*c1;
subplot(313);
plot(t,x);
axis([0 length(b) -2 2]);
xlable('time');
ylable('amp');
title(' DSSS BPSK')


