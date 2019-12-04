function g = grad(x)
    % gradijent za fju 1
    % g=[2.*x(1)+x(2)+1; x(1)+x(2)+10];
    
    % gradijent za fju 2
    % g = [ 4.*x(1); 2.*x(2) ];
    
    % gradijent za fju 1 [ druga grupa ]
    % g = [ 4.*((x(1)-2).^3) + (x(2).^2).*(x(1)-2).*2; 2.*x(2).*((x(1) -2).^2)+2.*(x(2)+1)];
    
    % gradijent za fju 2 [ druga grupa ]
    g = [ 2.*(x(1) -2); 2.*x(2)];
    
end