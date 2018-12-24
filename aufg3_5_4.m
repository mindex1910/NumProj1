% calculate numerical integration
f=@(x,y) 1;
n_max = 7; % 2^n_max ... maximale Anzahl der Ecken
integral = zeros(1,n_max-1);
c1=0;
c2=1;
for n = 2:n_max
    integral(n-1) = 2^n*duffyInt(f,0,0,0,1,0,c1,c2); 
    c1_tmp=sqrt(1/(1+(c2^2/(c1+1)^2)));
    c2=c2/(c1+1)*sqrt(1/(1+(c2^2/(c1+1)^2)));
    c1 = c1_tmp;
end

% calculate error and reference function O
error = abs(integral-pi);
O = error;
for n=2:n_max-1
    O(n) = (2^n)^(-2)*O(1)
end

% plot error and reference function O
x_ax = [2,4,8,16,32,64];
hold off
loglog(x_ax,error)
hold on 
loglog(x_ax,O)
xlabel('Anzahl an Ecken zur Approximation')
ylabel('Fehler')
legend('error','O(n^{-2})')
