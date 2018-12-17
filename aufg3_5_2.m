
f=@(x,y) sin(50*x)*sin(50*y);
n_max = 160;
integral = zeros(1,n_max+1);
for n = 1:n_max+1
    integral(n) = quadInt2(f,n-1,1,0,10,2,3,4,-1,1); 
end

error = integral-(-8/625+(37/2500)*cos(50)+(27/125000)*sin(50)-...
    (27/125000)*cos(50)*sin(50)-(1/500)*cos(50)^2);
plot(0:n_max,error)
xlabel('n')
ylabel('Fehler')

%{
    Ergebnis: konvergiert relativ langsam (ab n=147 konstant bis zur 4. 
    Nachkommastelle) gegen 0.0003
%}