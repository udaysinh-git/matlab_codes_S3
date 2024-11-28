data=[1,0,1,1,0,1,1];
a_h=3;
a_l=0;
output=[];
for i=1:length(n)
    if data(i)==1
        output=[output,a_h];
    else
        output=[output,a_l];
    end
end
stairs(output);
