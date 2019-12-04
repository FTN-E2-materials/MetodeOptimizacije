function ret = test()
    % funkcija i parametri za prvi zadatak
    %f=@(x) x(1).^2 + x(1).*x(2) + 0.5.*(x(2).^2) + x(1) +10.*x(2);
    %tol=10^-3;
    %gamma=0.1;
    %x0=[0;0];
    
    % funkcija i parametri za drugi zadatak
    % f=@(x) 2.*x(1).^2 + x(2).^2 - 3;
    % x0=[-2;-2];
    % tol=10^-3;
    % gamma=0.4;
    
    % funkcija i parametri za prvi zadatak [ druga grupa ]
    % f = @(x) (x(1)-2).^4 + ((x(1) -2).^2).*(x(2).^2) + (x(2)+1).^2;
    % x0=[1.2;0.5];
    % tol=10^-3;
    % gamma=0.5;
    
    % funkcija i parametri za drugi zadatak [ druga grupa ]
    f = @(x) (x(1)-2).^2 + x(2).^2 + 5;
    x0=[-3;5];
    tol=10^-3;
    gamma=0.5;
    
    [xopt,fopt,it,gnorm] = gradijent(f, @grad, gamma, tol, x0)

    
end