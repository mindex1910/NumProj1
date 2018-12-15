
f=@(x,y) 1;
n_max = 10

integral = zeros(1,n_max-1);
c1=0;
c2=1;
for n = 2:n_max
    integral(n-1) = 2^n*duffyInt(f,1,0,0,1,0,c1,c2); 
    c1_tmp=sqrt(1/(1+(c2^2/(c1+1)^2)));
    c2=c2/(c1+1)*sqrt(1/(1+(c2^2/(c1+1)^2)));
    c1 = c1_tmp;
end
integral

%{
    Output:  2.0000    2.8284    3.0615    3.1214    3.1365    3.1403    
                3.1413    3.1415    3.1416
%}