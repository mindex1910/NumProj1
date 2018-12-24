% calculate numerical integration
f=@(x,y) sin(50*x)*sin(50*y);
n_max = 200; 
integral = zeros(1,n_max+1);
for n = 1:n_max+1
    integral(n) = quadInt2(f,n-1,1,0,10,2,3,4,-1,1); 
end

% calculate error and reference function O
error = abs(integral-(-8/625+(37/2500)*cos(50)+(27/125000)*sin(50)-...
    (27/125000)*cos(50)*sin(50)-(1/500)*cos(50)^2));
O = error;
for n=1:147
    O(n+1) = O(n)*0.925;
end
for n=147:n_max
    O(n+1) = 0;
end

% plot error and reference function O
hold off
loglog(0:n_max,error)
hold on
xlabel('n')
ylabel('Fehler')
loglog(0:n_max, O)
legend('error','O(0.925^n)')
