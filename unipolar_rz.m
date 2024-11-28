n = [0, 1, 0, 1];
am=zeros(1, length(n));

for b = 1:length(n)
    if n(b) == 1
        am(b) = 3;
    else
        am(b) = 0;
    end
end

i=1;
a=0;
b=0.5;
t=0:0.01:length(n);
y=zeros(1, length(t));

for j=1:length(t)
    if t(j)>=a && t(j)<=b
        y(j)=am(i);
    elseif t(j)>b && t(j)<=i
        y(j)=0;

    else
        i=i+1;
        a=a+1;
        b=b+1;

    end
end

plot(t,y);

