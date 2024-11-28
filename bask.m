n = [0, 1, 0, 1];
t=0:0.01:length(n);
am=5;
f=5;
x=am*sqaure(2*pi*f*t);
subplot(3,1,1);
plot(t,x);
for b = 1:length(n)
    if n(x) == 1
        a(x) = 3;
    else
        a(x) = 3;
    end
end

subplot(3,1,2);
plot(t,x)