function [ c, ceq ] = con2(x)
    c=[-x(2) + x(1)^2 +2];
    ceq=[-x(2) +1/x(1)^2];
end