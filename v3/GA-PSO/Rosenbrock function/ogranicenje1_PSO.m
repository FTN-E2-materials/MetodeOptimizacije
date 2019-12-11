function [ f ] = ogranicenje1_PSO(x)
    c=10000;                                    % velika kosntanta kojom kaznjavamo funkciju
    
    % podsecanje kaznene funkcije je: F(x) = f(x) + g1
    % g1=c*(ogranicenje^2) tj g je kaznena funkcija
    g1=(-x(2) +x(1).^2 +2);                     % MORA SE NAMESTITI NA <= !!!!
    p=(max(0,g1).^2);                           % posto je ogranicenje nejednakosti
    % p = g1.^2;                                % da je bilo ogranicenje
    % jednakosti
    f = fun(x) + c.*p;

end