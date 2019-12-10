function [ f ] = ogranicenje1_PSO(x)
    c=10000;                                    % velika kosntanta kojom kaznjavamo funkciju
    
    if (-x(2) +x(1)^2 + 2 <=0)
        g1=0;                                   % nema kazne ako je zadovoljeno ogranicenje
    else
        g1=c.*(-x(2) +x(1).^2 +2).^2;           % vrsimo kaznjavanje ako nije
    end
    
    % podsecanje kaznene funkcije je: F(x) = f(x) + g1
    % g1=c*(ogranicenje^2) tj g je kaznena funkcija
    f = fun(x) + g1;

end