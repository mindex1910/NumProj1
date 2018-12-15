
f=@(x,y) sin(50*x)*sin(50*y);
n_max = 1000
integral = zeros(1,n_max)
for n = 1:n_max
    integral(n) = quadInt2(f,n,1,0,10,2,3,4,-1,1); 
end
integral

%{
    Ergebnis: konvergiert relativ langsam (ab n=147 konstant bis zur 4. 
    Nachkommastelle) gegen 0.0003
%}