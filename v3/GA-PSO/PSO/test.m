function ret = test()
%% 1. Iscrtavanje funkcije
    plot2D(@fun, -5:0.1:5, -5:0.1:5);
%% 2. Poziv za 5 dimenzija
    options = pso('options');
    options.npart = 100;
    options.tol = 1e-8;
    [x, f] = pso(@fun, 5, options);
%% 3. Uz ogranicenje tipa jednakosti
    [x, f] = pso(@ogranicenje1, 2);
%% 4. Uz ogranicenja tipa nejednakosti
    [x1, f1] = pso(@ogranicenje2, 2);
    
    options = pso('options');
    options.niter = 1000;
    [x2, f2] = pso(@ogranicenje2, 2, options);


end