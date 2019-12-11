function plotovanje2D(fun,x,y)
    [X,Y]= meshgrid(x,y);
    Z=nan*ones(size(X));
    for i =1:length(x)
        for j = 1:length(y)
            arg=[X(i,j);Y(i,j)];
            Z(i,j) = fun(arg);
        end
    end
    
    meshc(X,Y,Z);

end