function [xopt,fopt,it,gnorm] = grad_descent(f,grad,gamma, tol,x0)
    gnorm = inf;                % duzina vektora tj || gradijent || na pocetku inf da bi cisto usli u while
    x = x0; 
    it = 0; 
  
    while gnorm>=tol            % kriterijum zaustavljanja || gradijent || < tol
        g = grad(x);            % gradijent 
        gnorm = norm(g);        % || gradijent || = norm(g) da bi dobili duzinu vektora
                                % g je gradijent tj parcijalni izvod po
                                % svim promenljivima koji trebamo
                                % samostalno napisati !
                                
        xnew = x - gamma*g;     % novo x je po formuli,- jer je SteepestDescent 
        it = it + 1;            % sledeca iteracija 
        x = xnew;
    end
    
    xopt = x;
    fopt = f(xopt);
    it = it - 1;
end
