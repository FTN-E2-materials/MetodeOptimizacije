function plot2D (fun, xrange, yrange)
    [X, Y] = meshgrid(xrange, yrange);
    Z = NaN*ones(size(X));
    for xndx = 1:length(xrange)
        for yndx = 1:length(yrange)
            arg = [X(xndx, yndx); Y(xndx, yndx)];
            Z(xndx, yndx) = fun(arg);
        end
    end
    
    meshc(X, Y, Z);
end