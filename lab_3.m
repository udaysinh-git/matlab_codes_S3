fc=5;
fs=20*fc;
Ac=5;
t=0:1/fs:1;
x=Ac*sin(2*pi*fc*t);
y=x+Ac;
z=round(y);
e=de2bi(z,"left-msb");
d=bi2de(e,"left-msb");
figure;
subplot(2,1,1);
plot(t,x);
xlabel("time(in sec)");
title("Signal ");
subplot(2,1,2)
plot(t,d);
xlabel("time(in sec)");
title("Signal");