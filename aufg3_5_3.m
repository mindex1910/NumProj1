
f=@(x,y) sqrt(9*y/(1-x^2));
n_max = 600
integral = zeros(1,n_max)
for n = 1:n_max
    integral(n) = quadInt(f,n); 
end
integral

%{
    Ergebnis: konvergiert sehr langsam gegen pi
%}