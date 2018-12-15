
f=@(x,y) 1;
%f=@(x,y) (y);
quad_int = quadInt(f,3)
trig_int = trigInt(f,3)
duffy_int_old = duffyInt_old(f,3,1,0,1) %a1=1, b1=0, b2=1
duffy_int = duffyInt(f,3,0,0,1,0,0,1) 
quad_int2 = quadInt2(f,3,0,0,1,0,1,1,1,0)


