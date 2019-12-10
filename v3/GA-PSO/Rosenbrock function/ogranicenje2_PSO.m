function [ f ] = ogranicenje2_PSO(x)
    c=10000;
    % za jednacinu tipa NEJEDNAKOSTI
    if (-x(2) +1/(x(1)^2) <=0)
        g1=0;                                   % nema kazne ako je zadovoljeno ogranicenje
    else
        g1=c.*(-x(2) +1/(x(1)^2)).^2;           % vrsimo kaznjavanje ako nije
    end
    % za jednacinu tipa JEDNAKOSTI
    g2= c*((-x(2) +x(1).^2 +2).^2);
    
    f = fun(x) + g1 + g2;
end