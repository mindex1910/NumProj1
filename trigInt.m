--    
function ret_val = quadInt(f,n)
    [nodes, weights] = gauss(n);
    function ret = f_n(s,t)
        x = s;
        y = t*(1-s);
        ret = abs(1-s)*f(x,y);
    end
    tmp = 0;
    for i = 1:n+1
        for j = 1:n+1
            tmp = tmp+weights(i)*weights(j)*f_n(nodes(i),nodes(j));
        end
    end
    ret_val = tmp;
end