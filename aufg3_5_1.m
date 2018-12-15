
f=@(x,y) x^7+3*x^4*y^4+3*x^2*y+7*y^6;
n_max = 5
integral = zeros(1,n_max)
for n = 1:n_max
    integral(n) = duffyInt(f,n,0,0,0.5,-0.5,1,1); 
end
integral

%{
    Output:  0.3568    0.3057    0.2880    0.2878    0.2878
%}
