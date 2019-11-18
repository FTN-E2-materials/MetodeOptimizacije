function [x,fx,n]=secica(fun,dfun,a,b,tol)
    %b je prethodni
    %a je trenutni
    %x je naredni
    x = a;                  %x je xk+1 tj a
    a = Inf;                
    dfb = feval( dfun, b ); %f'(xk-1) dobijem koliko je
    n = 0;
    while abs(x - a) > tol  %kriterijum zaustavljanja
        a = x;              %trenutni postaje naredni
        dfa = feval( dfun, a ); %nadjemo izvod trenutnog
        x = a - dfa * (a - b) / (dfa - dfb);
        
        dfb = dfa;          %izvod prethodnog postaje trenutni
        b = a;              %prethodni postaje trenutni
        n = n + 1;
    end
    fx = feval( fun, x );
end