function [xopt,fopt,niter,gnorm,dx] = grad_descent(f,grad,gamma, tol,x0)
gnorm = inf;
x = x0; 
niter = 0; 
dx = inf;

%%

xarray=-3:0.1:3; 
[X1, X2] = meshgrid(xarray, xarray);
Y = NaN*ones(size(X1));
for i = 1:size(X1,1)
    for j = 1:size(X1,2)
        Y(i, j) = f([X1(i,j); X2(i,j)]);
    end
end
figure
surface(X1,X2,Y)
grid on
%%


while gnorm>=tol
    g = grad(x);
    gnorm = norm(g);
    xnew = x - gamma*g;

%     hold on
%     plot3([x(1) xnew(1)],[x(2) xnew(2)],[f(x) f(xnew)],'ro-')
%     plot3([x(1) xnew(1)],[x(2) xnew(2)],[0 0],'ro-')
%     refresh
    niter = niter + 1;
    % dx = norm(xnew-x);
    x = xnew;
    
end
xopt = x;
fopt = f(xopt);
niter = niter - 1;

