n = [1, 0, 1, 0];

i = 1;
a = 0;
b = 0.5;
t = 0:0.01:length(n);

y = zeros(1, length(t));

for j = 1:length(t)
    if t(j) >= a && t(j) < b
        y(j) = n(i);
    elseif t(j) >= b && t(j) < a+1
        y(j) = 0;
    end
    
    if t(j) >= b
        i = i + 1;          
        if i <= length(n) 
            a = b;         
            b = a + 0.5;   
        end
    end
end

plot(t, y);
xlabel('Time');
ylabel('Amplitude');
title('Signal Plot');
