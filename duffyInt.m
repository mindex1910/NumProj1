
function ret_val = duffyInt(f,n,a1,a2,b1,b2,c1,c2)
    [nodes, weights] = gauss(n);
    function ret = f_n(s,t)
        x = a1*s*t-b1*s*t-a1*s-a1*t+b1*t+c1*s+a1;
        y = a2*s*t-b2*s*t-a2*s-a2*t+b2*t+c2*s+a2;
        ret = abs(-a1*b2*s+a1*c2*s+a2*b1*s-a2*c1*s-b1*c2*s+b2*c1*s+a1*b2-a1*c2-a2*b1+a2*c1+b1*c2-b2*c1)*f(x,y);
    end
    tmp = 0;
    for i = 1:n+1
        for j = 1:n+1
            tmp = tmp+weights(i)*weights(j)*f_n(nodes(i),nodes(j));
        end
    end
    ret_val = tmp;
end