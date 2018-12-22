
f=@(x,y) sqrt(9*y/(1-x^2));
n_max = 1000;
integral = zeros(1,n_max);
for n = 1:n_max
    integral(n) = quadInt(f,n); 
end

error = integral-pi;
loglog(1:n_max,error)
%plot(1:n_max, error)
xlabel('n')
ylabel('Fehler')

%{
    Ergebnis: konvergiert sehr langsam gegen pi
%}