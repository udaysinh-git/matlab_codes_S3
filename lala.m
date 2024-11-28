n = [0, 1, 0, 1];

% Initialize the 'am' array
am = zeros(size(n)); % Assuming you want to use the same size as 'n'

% Populate the 'am' array
for b = 1:length(n)
    if n(b) == 1
        am(b) = 3;
    else
        am(b) = 0;
    end
end

i = 1;
a = 0;
b = 0.5;
t = 0:0.01:(length(n) - 1); % Adjusted range to match indices of 'n'

% Initialize 'y' array
y = zeros(size(t));

for j = 1:length(t)
    if t(j) >= a && t(j) <= b
        % Use 'am' instead of 'a(i)'
        if i <= length(am)
            y(j) = am(i);
        else
            y(j) = 0; % Default case if 'i' is out of range
        end
    elseif t(j) > b && t(j) <= i
        y(j) = 0;
    else
        % Update 'i', 'a', and 'b' only if 'i' is within bounds
        if i < length(am)
            i = i + 1;
            a = a + 1;
            b = b + 1;
        end
    end
end

plot(t, y);
xlabel('Time');
ylabel('Value');
title('Plot of y against t');
