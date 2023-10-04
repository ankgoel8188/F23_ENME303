function [x_array, x, iter] = Newthon_Method(f, df, x_init, n, precision)

x_array(1) = x_init;

for i = 1:n
    x_array(i+1) = x_array(i) - f(x_array(i))/df(x_array(i));
    fprintf('iter: %d and function value: %.4f \n',i,f(x_array(i+1)))

    if f(x_array(i+1)) < precision
        x = x_array(i+1);
        iter = 1:i+1;
        fprintf('root is %.4f \n',x_array(i+1))
        break
    end
end




