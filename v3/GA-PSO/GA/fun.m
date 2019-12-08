function [ f ] = fun(x)
    n = length(x);
    a = 20;
    b = 0.2;
    c = 2 * 3.14;
    s1 = 0;
    s2 = 0;
    for i = 1:n
        s1 = s1 + x(i)^2;
        s2 = s2 + cos(c*x(i));
    end
    
    f = -a*exp(-b*sqrt(s1/n)) - exp(s2/n) + a + exp(1);
end