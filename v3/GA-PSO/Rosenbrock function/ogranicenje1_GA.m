function [c, ceq ] = ogranicenje1_GA(x)
    % posto je pretraga ogranicena na tacke x1x2,
    % koje se nalaze IZNAD krive x2=x1^2 + 2
    
    % -> x2 - x1^2 - 2 >= 0 a nama treba <=
    % -> -x2 + x1^2 + 2 <= 0 i to je nase ogranicenje nejednakosti
    
    c = [ -x(2) +x(1).^2 +2];      % nase ogranicenje nejednakosti
    ceq = [ ];                     % ogranicenje jednakosti nemamo
    

end