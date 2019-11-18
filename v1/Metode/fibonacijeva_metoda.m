function [x, fx] = fibonacijeva_metoda(fun, a, b, tol)
    % Fibonacci-jev postupak minimizacije funckcije FUN jedne promenljive.
    % Funkcija mora biti unimodalna nad intervalom [a, b].
    % Tol je trazena sirina intervala u kome se nalazi minimum.
    % Minimum je u X i ima vrednost FX
    %% Korak 1 - Trazimo najmanji broj n koji zadovoljava uslov
    n = 1;
    while tol < (b-a) / fibonacci_number(n)
        n = n + 1;
    end
    %% Korak 2 - Odredjujemo pocetne tacke
    x1 = a + fibonacci_number(n-2) / fibonacci_number(n) * (b - a);
    x2 = a + b - x1;
    f1 = feval(fun, x1);
    f2 = feval(fun, x2);
    %% Korak 3 - Iteracije
    % Radimo n-1 iteracija, posle cega je (b-a) < tol
    for k = 2:n
        % Smanjujemo interval
        if f1 <= f2
            b = x2;
            x2 = x1; f2 = f1;
            x1 = a + b - x1; f1 = feval(fun, x1);
        else
            a = x1;
            x1 = x2; f1 = f2;
            x2 = a + b - x2; f2 = feval(fun, x2);
        end
        % Azuriramo resenje
        if f1 < f2
            x = x1; fx = f1;
        else
            x = x2; fx = f2;
        end
    end
end