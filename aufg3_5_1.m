
f=@(x,y) x^7+3*x^4*y^4+3*x^2*y+7*y^6;
n_max = 5;
integral = zeros(1,n_max+1);
for n = 1:n_max+1
    integral(n) = duffyInt(f,n-1,0,0,0.5,-0.5,1,1); 
end
integral

% plot error
error = integral-0.2877808780;
plot(0:n_max,error)
set(gca,'xtick',([min(xlim):max(xlim)]))
set(gca,'xticklabel',[0:5])
xlabel('n') 
ylabel('Fehler')

%{
    integral =  0.3568    0.3057    0.2880    0.2878    0.2878
%}
