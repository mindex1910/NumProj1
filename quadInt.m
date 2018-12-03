
function ret_val = quadInt(f,n)
    [nodes, weights] = gauss(n);
    tmp = 0;
    for i = 1:n+1
        for j = 1:n+1
            tmp = tmp+weights(i)*weights(j)*f(nodes(i),nodes(j));
        end
    end
    ret_val = tmp;
end