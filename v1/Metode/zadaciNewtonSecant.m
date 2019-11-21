function y = zadaciNewtonSecant()
    % zadatak 1
    % Njutnovom metodom odrediti MAKSIMUM:
    %f(x) = 4x3 - 15x2 - 4x + 24
    %a = 2
    %tol = 0.001
    fun = @(x) 4*x.^3 - 15*x.^2 - 4*x + 24;
    dfun = @(x) 12*x.^2 - 30*x - 4;
    d2fun = @(x) 24*x - 30;
    
    [x, fx, n] = newton(fun, dfun, d2fun, 2, 0.001)
    %% Njutnova metoda - Primer sa vezbi
    fun = @(x) 2*x.^4 - 3*x;
    dfun = @(x) 8*x.^3 - 3;
    d2fun = @(x) 24*x.^2;

    a = 1;
    tol = 10.^-2;
    [x, fx, n] = newton(fun, dfun, d2fun, a, tol)
    
    %% Metoda secice - Primer sa vezbi
    fun = @(x) 2*x.^4 - 3*x;
    dfun = @(x) 8*x.^3 -3;
    
    [x,fx,n] = secica(fun,dfun,1,2,10.^-2)
    
    %% Zadatak 2 - Metodom se?ice odrediti minimum
    % f(x) = 4x^3 - 15x^2 - 4x + 24
    %a = 3
    %b = 4
    %? = 0.001
    
    fun=@(x) 4*x.^3 - 15*x.^2 - 4*x +24;
    dfun=@(x) 12*x.^2 - 30*x - 4;
    
    [x,fx,n] = secica(fun,dfun,3,4,0.001)

end