function [ f ] = fun(x)
    n = length(x);
    s = 0;
    for i = 1:n
        s = s + x(i).^2 - 10*cos(2*pi*x(i));
    end
    f = 10*n + s;
end