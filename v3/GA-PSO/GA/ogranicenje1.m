function [ c, ceq ] = ogranicenje1(x)
    c=[-x(2) +1/x(1)^2];            % ogranicenje nejednakosti
    ceq=[];                         % ogranicenje jednakosti
end