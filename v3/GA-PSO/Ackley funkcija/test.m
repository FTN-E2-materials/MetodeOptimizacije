function ret = test()

%1) Skicirati Ackley funkciju za dve promenljive na intervalu [-5, 5]
%% GA-PSO
    plotovanje2D(@fun,-5:0.1:5,-5:0.1:5);
%2) Odrediti optimum funkcije za slucaj 5 promenljivih sa tolerancijom 10^-8
%% GA
    optimtool                                   % pogledati folder 'rosenbrock funkcija' za podesavanje GA
%% PSO
    options = pso('options');
    options.tol = 1e-8;
    [x, f] = pso(@fun,5, options);              % pozivamo PSO nad fun sa 5 promenljivih i prosledjenim opcijama

%3) Odrediti optimum funkcije za slucaj 2 promenljive,
% ako je pretraga ograni?ena na ta?ke u x1x2 koje se nalaze iznad krive x2 = 1/x1^
%% GA
    optimtool                                   % pogledati folder 'rosenbrock funkcija' za podesavanje GA
%% PSO
    [x, f] = pso(@ogranicenje1_PSO,2);
    
%4)Odrediti optimum funkcije za slucaj 2 promenljive, ako je pretraga ogranicena na
% ta?ke u x1x2 koje se nalaze iznad krive iznad krive x2 = x1^2 + 2, 
% tako da istovremeno vazi ogranicenje x2 = 1/x1^2. Zadatak uraditi sa podrazumevanim
% brojem generacija i sa 1000 generacija. Uporediti rezultate.
%% GA
    optimtool                                   % pogledati folder 'rosenbrock funkcija' za podesavanje GA
%% PSO
    [x,f]=pso(@ogranicenje2_PSO,2);
    
    options = pso('options');
    options.niter = 1000;
    [x,f] = pso(@ogranicenje2_PSO,2,options);

end






