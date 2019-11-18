function y = zadaciFibZlt()
    %% Zadatak 1. - prezentacija
    f = @(x) x.^4 - 5*x.^3 - 2*x.^2 + 24*x;
    [x, fx] = fibonacijeva_metoda(f, 0, 3, 0.0001)

    %% Zadatak 2. - Vezbe
    fun = @(x) -(2*x.^4 - 3*x);
    [x, fx] = fibonacijeva_metoda(fun, 0, 1, 10.^-5)

    %% Zadatak 3. - kao Zad. 1.
    f = @(x) x.^4 - 5*x.^3 - 2*x.^2 + 24*x;
    [x, fx] = metoda_zlatnog_preseka(f, 0, 3, 0.0001)

    %% Zadatak 4. - kao Zad. 2.
    fun = @(x) 2*x.^4 - 3*x;
    [x, fx] = metoda_zlatnog_preseka(fun, 0, 1, 10.^-5)
end