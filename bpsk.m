Fs = 1000;       
Tb = 1;          
t = 0:1/Fs:Tb-1/Fs; 


data = [1 0 1 1 0 0 1]; 

bpsk_signal = [];

for k = 1:length(data)
    if data(k) == 0
        bpsk_signal = [bpsk_signal, -cos(2*pi*t/Tb)]; 
    else
        bpsk_signal = [bpsk_signal, cos(2*pi*t/Tb)]; 
    end
end

t_total = 0:1/Fs:(length(data)*Tb)-1/Fs;

figure;
plot(t_total, bpsk_signal);
title('BPSK Signal');
xlabel('Time (s)');
ylabel('Amplitude');