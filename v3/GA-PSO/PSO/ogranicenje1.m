function [ f ] = ogranicenje1(x)
    c = 10000;
    f = fun(x) + c * ((x(2) - x(1).^2 - 2).^2);         % kaznena funkcija je drugi sabirak
    % funkciju kaznjavamo sa nekim velikim brojem 
    % F(x) = f(x) + kaznena_funkcija
    % kaznena = suma(c*g^2)
    % g - zadato ogranicenje ( mora biti jednako 0 )
    
end