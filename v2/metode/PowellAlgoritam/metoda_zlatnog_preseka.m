function [x, fx] = metoda_zlatnog_preseka(fun, a, b, tol)
    % Zlatni presek - postupak minimizacije funckcije FUN jedne promenljive.
    % Funkcija mora biti unimodalna nad intervalom [a, b].
    % Tol je trazena sirina intervala u kome se nalazi minimum.
    % Minimum je u X i ima vrednost FX
    % Korak 1 - Odredjujemo pocetne tacke
    % Odnos zlatnog preseka (celine prema manjem delu)
    c = (3 - sqrt(5)) / 2;
    % Racunamo pocetne tacke po zlatnom preseku
    x1 = a + c * (b - a);
    x2 = a + b - x1;
    f1 = feval( fun, x1 );
    f2 = feval( fun, x2 );

    % Korak 2 - Iterativno smanjujemo interval dok ne dobijemo zeljenu preciznost
    while (b - a) > tol
        % Smanjujemo interval
        if f1 <= f2
            b = x2;
            x2 = x1; f2 = f1;
            x1 = a + c*(b - a); f1 = feval(fun, x1);
        else
            a = x1;
            x1 = x2; f1 = f2;
            x2 = b - c*(b - a); f2 = feval(fun, x2);
        end
        % Azuriramo resenje
        if f1 < f2
            x = x1; fx = f1;
        else
            x = x2; fx = f2;
        end
    end
end