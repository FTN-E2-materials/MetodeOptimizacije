function y = test()

%1) Crtanje Rosenbrock funkcije
%% GA-PSO 
    plot2D(@fun,-5:0.1:5, -5:0.1:5);

%2) Odredjivanje optimuma funkcije za slucaj 5 promenljivih sa tolerncijom
% od 10^-8 i velicinom populacije 100.
%% GA
    optimtool
%% PSO
    options = pso('options');                   % dobijamo objekat options kako bi vrsili podesavanje pso-a
    options.npart = 100;                        % postavljamo broj jedinki
    options.tol = 1e-8;                         % podesavamo toleranciju
    [x, f] = pso(@fun, 5, options);             % izvrsavamo pso za 5 promenljivih po prosledjenim opcijama

    
%3) Odrediti optimum funkcije za slucaj 2 promenljive, ako je pretraga
% oganicena na tacke u ravni x1x2 koje se nalaze iznad krive x2=x1^2 + 2
%% GA
    optimtool
%% PSO
    [x, f] = pso(@ogranicenje1_PSO,2);

%4) Odrediti optimum funkcije za slucaj 2 promenljive, ako je pretraga
%ogranicna na tacke u ravni x1x2 koje se nalaze iznad krive x2=1/x1^2, tako
%da istovremeno vazi ogranicenje x2=x1^2+2. Zadatak uraditi sa
%podrazumevanim brojem generacije i sa 1000 generacija. Uporediti rezultate
%% GA
    optimtool
%% PSO
    [x, f] = pso(@ogranicenje2_PSO,2);
    
    options = pso('options');
    options.niter = 1000;
    [x, f] = pso(@ogranicenje2_PSO,2, options);
end



