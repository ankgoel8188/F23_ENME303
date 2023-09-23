function [c, e] = Bisection_Method(f,a_init,b_init,n,e_max)

if f(a_init)*f(b_init)<0
    a = a_init;
    b = b_init;
    for i = 1:n
        c = (a+b)/2;
        e = (b-a)/2;
        fprintf('iter: %d and error: %.4f \n',i,e)

        if e < e_max
            fprintf('root is %.4f \n',c)
            break
        else
            if f(a)*f(c)<0
                b = c;
            else
                a = c;
            end
        end

    end

else
    disp('there is no root')
    c = [];
    e = [];
end