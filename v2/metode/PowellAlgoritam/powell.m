function [x,f,it] = powell(fun,x0,epsilon)
    % Metoda Powell za minimizaciju f-je vise promenljivih bez ogranicenja
    % fun - funkcija cilja
    % x0 - pocetno pogadjanje
    % epsilon - uslov zaustavljanja
    n = length(x0);                                 % broj promenljivih
    u = eye(n);                                     % po?etni “konjugovani pravci”
    x = x0; x1 = x0+2*epsilon;                      % x1 je vrednost iz predhodne iteracije
    it = 0;                                         % broj iteracija
    while max(abs(x-x1)) > epsilon                  % kriterijum zaustavljanja
        it = it+1;                                  % prelazak na sledecu iteraciju
        ti = x;                                     % teku?a ta?ka
        for i = 1:n                                 % po svim pravcima
            %teta = parabola(fun,u(:,i),ti,epsilon); % 1D linijska pretraga
            teta = metoda_zlatnog_preseka(@(teta)fun(ti+teta*u(:,i)),-1000000,1000000,epsilon); % 1D linijska pretraga
            ti = ti + teta*u(:,i);                  % pomeranje u minimum na pravcu
        end
        u = [u(:,2:n) ti-x];                    % prvi vektor ispada i dodaje se novi
        x1 = x;
        teta = metoda_zlatnog_preseka(@(teta)fun(ti+teta*(ti-x)),-1000000,1000000,epsilon);
        %teta = parabola(fun,u(:,n),ti,epsilon); % n+1. pretraga, (umesto ti može x1)
        x = ti + teta*u(:,n);                   % minimum, (umesto ti može x1)
    end
    f = feval(fun,x);                               % dobijamo vrednost funkcije u tacki x
end

% function [ x, fx, n ] = parabola(fun, x1, x3, eps)
% function [x, fx] = metoda_zlatnog_preseka(fun, a, b, tol)