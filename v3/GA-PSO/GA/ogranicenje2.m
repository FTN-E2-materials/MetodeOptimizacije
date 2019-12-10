function [ c, ceq ] = ogranicenje2(x)
    c=[-x(2) + x(1)^2 +2];              % ogranicenje nejednakosti [ iznad krive pa smo mnozili sa (-1) ]
    ceq=[-x(2) +1/x(1)^2];              % ogranicenje jednakosti 
end