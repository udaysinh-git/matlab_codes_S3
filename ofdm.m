n=256;
x=randi([0,1],n,1);
m=16;
n=16;
k= log2(m);
xysm= bi2de(reshape(x,k,length(x)/k., 'left-msb')));
y= qammod(xysm,m);
tu=3.2e-6;
tg= 0.8e-6;
ts=tu+tg;
nmin=0;
nmax=64;
scb=312.5e3;
fc=4.6e9;
rs=fc;
tt=0:6.2500-008:ts-6.2500e-008;
c=ifft(y,nmax);
s=real(c'.*(exp(1j*2*pi*fc*tt)));
figure;
plot(real(s),'b');
title(' OFDM signal transmitted');
figure;
plot(10*log10(abs(fft(s,nmax))));
title('OFDM spectrum');
xlabel('frequency')
ylable('power spectral density')
title(' transmit spectrum OFDM')
snr=10;
ynoisy= awgn(s,snr,'measured');
figure;
plot(real9ynoisy),'b');
title('recive ODFM signal with noise');
z=ynoisy.*exp(1i*2*pi*fc*tt);
z=fft(z,nmas);
zsym=qamdemod(z,(m));
z=de2bi(zsym,'left-msb');
z=reshape(z.',prod(size(z),1);
[noe,ber]=bitter(x,z);
subplot(211);
stem(x(1:256));
title('original message');
subplot(212);
stem(z(1:256));
title('recovered message');


