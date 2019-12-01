function [x, f, it] = powell(fun, x0, xg, eps)
    n = length(x0);
    u = eye(n);
    x = x0; 
    x1 = x0 + 2*eps;
    it = 0;
    while max(abs(x - x1)) > eps
        it = it  +  1;
        ti = x;
        for i=1:n
            teta = parabola(fun, u(:, i), ti, xg, eps);
            if abs(teta) > 1e-15
                ti = ti + teta*u(:, i);
            end
        end
        u = [u(:, 2:n) ti - x];
        x1 = x;
        teta = parabola(fun, u(:, n), ti, xg, eps);
        if abs(teta) > 1e-15
            x = ti  +  teta*u(:, n);
        else
            x = ti;
        end
    end
    f = feval(fun,  x);
end