ac=2;
fm=10;
t1=(-5:1:5);
t2=(-10:1:10);
t3=(-20:1:20);
fs1=2*fm;
fs2=1.5*fm;
fs3=1*fm;
x1=ac*cos(2*pi*fm/fs1*(t1));
x2=ac*cos(2*pi*fm/fs2*(t2));
x3=ac*cos(2*pi*fm/fs3*(t3));
stem(x1);
stem(x2);
stem(x3);

