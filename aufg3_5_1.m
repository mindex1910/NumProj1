
% calculate numerical integration
f=@(x,y) x^7+3*x^4*y^4+3*x^2*y+7*y^6;
n_max = 10;
integral = zeros(1,n_max+1);
for n = 1:n_max+1
    integral(n) = duffyInt(f,n-1,0,0,0.5,-0.5,1,1); 
end

% calculate error and reference function O
error = abs(integral-0.2877808780)
O = error;
for n=1:4
    O(n+1) = O(n)/(2^((n-1)^2.4));
end
for n=5:n_max
    O(n+1) = 0;
end

% plot error and reference function O
hold off
loglog(0:n_max,abs(error))
xlabel('n') 
ylabel('Fehler')
hold on
loglog(0:n_max, O)
legend('error','O(2^{-n(n-1)^{2.4}})')
