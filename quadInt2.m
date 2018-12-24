
function ret_val = quadInt2(f,n,a1,a2,b1,b2,c1,c2,d1,d2)
    [nodes, weights] = gauss(n);
    function ret = f_n(s,t)
        x = (d1-b1+a1)*s*t+(c1-a1)*s+(b1-a1)*t+a1;
        y = (d2-b2+a2)*s*t+(c2-a2)*s+(b2-a2)*t+a2;
        ret = abs(a1*b2*s-a1*c2*s-a1*d2*s+a1*d2*t-a2*b1*s+a2*c1*s+a2*d1*s...
            -a2*d1*t+b1*c2*s-b1*d2*t-b2*c1*s+b2*d1*t+c1*d2*s-c2*d1*s-a1*b2...
            +a1*c2+a2*b1-a2*c1-b1*c2+b2*c1)*f(x,y);
    end
    tmp = 0;
    for i = 1:n+1
        for j = 1:n+1
            tmp = tmp+weights(i)*weights(j)*f_n(nodes(i),nodes(j));
        end
    end
    ret_val = tmp;
end