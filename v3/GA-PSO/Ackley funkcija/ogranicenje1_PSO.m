function [ f ] = ogranicenje1_PSO(x)
    c=10000;
    
    g1 =-x(2)+1/(x(1).^2);
    p1 = (max(0,g1)).^2;
    
    f = fun(x) + c.*p1;
    
end