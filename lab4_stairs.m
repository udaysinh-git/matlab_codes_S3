data=[1,0,1,1,0,1,1];
a_h=3;
a_m=0;
a_l=-3;
output=[];
for i=1:length(data)
    if data(i)==1
        output=[output,a_h,a_l];
    else
        output=[output,a_l,a_m];
    end
end
stairs(output);