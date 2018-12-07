
f=@(x,y) 1;
%f=@(x,y) (y);
quad_int = quadInt(f,3)
trig_int = trigInt(f,3)
duffy_int = duffyInt(f,3,1,0,1) %a1=1, b1=0, b2=1

