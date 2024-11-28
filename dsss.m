f=3;
N=(2^f)-1;
s1=1;
s2=1;
s3=1;
for i=1:N
    s0(i)=xor(s3(i),s1(i));
    s1(i+1)=s0(i);
    s2(i+1)=s1(i);
    s3(i+1)=s2(i);
end
disp('PN Sequence:');
disp(pn_seq);
figure;
stem(pn_seq,'filled');
title('PN Sequence');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;
binary_signal = [1 0 1 1 0 0 1];
dsss_signal = [];
for bit = binary_signal
    if bit == 1
        dsss_signal = [dsss_signal, pn_seq];
    else
        dsss_signal = [dsss_signal, -pn_seq];
    end
end
figure;
t = 1:length(dsss_signal);
plot(t, dsss_signal);
title('DSSS Signal');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;