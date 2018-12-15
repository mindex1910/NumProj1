
function ret_val = duffyInt_old(f,n,a1,b1,b2)
    [nodes, weights] = gauss(n);
    function ret = f_n(s,t)
        x = s*b1+t*(1-s)*a1;
        y = s*b2;
        ret = abs(b2*a1*(1-s))*f(x,y);
    end
    tmp = 0;
    for i = 1:n+1
        for j = 1:n+1
            tmp = tmp+weights(i)*weights(j)*f_n(nodes(i),nodes(j));
        end
    end
    ret_val = tmp;
end