function [ f ] = ogranicenje1(x)
    c = 10000;
    f = fun(x) + c * (x(2) - x(1).^2 - 2);
end