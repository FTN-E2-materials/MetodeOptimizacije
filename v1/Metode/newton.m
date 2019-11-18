function [x,fx,n]=newton(fun,dfun,d2fun,a,tol)
    %a je xk+1 i ono se prosledi
    x = inf;                %pocetna tacka na beskonacno
    n = 0;                  %brojac petlje n
    while abs(x - a) > tol  %kriterijum zaustavljanja
        x = a;              %x=xk+1
        a = x - feval(dfun,x)/feval(d2fun,x);
        n = n + 1;
    end
    x = a;                  %x=xk+1 jer smo nasli optimum
    fx = feval(fun,x);      %dobijamo vrednost fje u x-u tj xk+1
end