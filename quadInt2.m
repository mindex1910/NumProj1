
function ret_val = quadInt2(f,n,a1,a2,b1,b2,c1,c2,d1,d2)
    [nodes, weights] = gauss(n);
    function ret = f_n(u,v)
        x = (d1-b1+a1)*u*v+(c1-a1)*u+(b1-a1)*v+a1;
        y = (d2-b2+a2)*u*v+(c2-a2)*u+(b2-a2)*v+a2;
        ret = abs(a1*b2*u-a1*c2*u-a1*d2*u+a1*d2*v-a2*b1*u+a2*c1*u+a2*d1*u...
            -a2*d1*v+b1*c2*u-b1*d2*v-b2*c1*u+b2*d1*v+c1*d2*u-c2*d1*u-a1*b2...
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