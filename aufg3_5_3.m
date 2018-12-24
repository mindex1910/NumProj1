% calculate numerical integration
f=@(x,y) sqrt(9*y/(1-x^2));
n_max = 600;
integral = zeros(1,n_max);
for n = 1:n_max
    integral(n) = quadInt(f,n); 
end

% calculate error and reference function O
error = abs(integral-pi);
O = error;
for n=1:n_max
    O(n) = n^(-0.85)*O(1)
end

% plot error and reference function O
hold off
loglog(1:n_max,error)
hold on
loglog(1:n_max,O)
xlabel('n')
ylabel('Fehler')
legend('error','O(n^{-0.85})')