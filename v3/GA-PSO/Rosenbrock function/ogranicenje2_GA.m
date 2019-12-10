function [ c,ceq] = ogranicenje2_GA(x)
    c = [-x(2) +x(1).^2 +2 ];               % ogranicenje nejednaoksti
    ceq = [ -x(2) +1/(x(1).^2)];            % ogranicenje jednakosti
end