x=[1,1,1,0,0];
y=length(x);
for k=1:y
    if(x(k))==1
        a= 4;
    else
        a=0;
    end
end


i=1;
t=0:0.01:y;
for j= i:length(t)
    if t(j)<=1
        g(j)=a(i);
    else
        g(j)=a(i);
        i=i+1;
    end
end

plot(t,g);

