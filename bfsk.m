Fs = 50;       
Tb = 1;          
t = 0:1/Fs:Tb-1/Fs; 

f1 = 1;        
f2 = 5;        

data = [1 0 1 1 0 0 1]; 

bfs_signal = []; 
for k = 1:length(data)
    if data(k) == 0
        bfs_signal = [bfs_signal, cos(2*pi*f1*t)]; 
    else
        bfs_signal = [bfs_signal, cos(2*pi*f2*t)];
    end
end

t_total = 0:1/Fs:(length(data)*Tb)-1/Fs;

figure;
plot(t_total, bfs_signal);
title('BFSK Signal');
xlabel('Time (s)');
ylabel('Amplitude');