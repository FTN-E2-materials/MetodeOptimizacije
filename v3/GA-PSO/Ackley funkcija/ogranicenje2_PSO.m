function [ f ] = ogranicenje2_PSO(x)
    c=10000;
    % ogranicenje tipa NEJEDNAKOSTI
    g1 = -x(2) +x(1).^2 +2;
    p1 = (max(0,g1)).^2;
    % ogranicenje tipa JEDNAKOSTI
    g2 = -x(2) +1/(x(1).^2);
    p2 = g2.^2;
    
    
    f = fun(x) + c.*p1 + c.*p2;

end