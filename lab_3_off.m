n = [0, 1, 0, 1];

a = zeros(1, length(n)); 
for b = 1:length(n)
    if n(b) == 1
        a(b) = 3;
    else
        a(b) = 0;
    end
end


t = 0:0.1:length(n);


y = zeros(1, length(t));


i = 1;  
for j = 1:length(t)
    if t(j) < i
        y(j) = a(i);
    else
        i = i + 1;  
        if i <= length(a)
            y(j) = a(i);
        else
            y(j) = 0;  
        end
    end
end


plot(t, y, 'r');
xlabel('Time');
ylabel('Amplitude');
title('Signal Plot');
