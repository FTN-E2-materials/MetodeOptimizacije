function [ f ] = fun(x)

    s=0;
    %Rosenbrok function
    n=length(x);
    %n=n-1;
    for i = 1:n-1
       s=s+ 100.*( x(i+1) - (x(i).^2) ).^2 + (1-x(i)).^2;
    end
    f=s;
    
    
end