function [ f ] = ogranicenje2(x)
    c=10000;

    if ((-3*x(1) - 2*x(2)+6) <= 0)
        g1=0;                               % ne kaznjavamo ga jer je ispod -> sve okej
    else
        g1=c*(-3*x(1) - 2*x(2) + 6).^2;     % crnu pogibiju mu dajemo (kaznu)           
    end
    if (((-x(1) + x(2) - 3) <= 0))
        g2=0;
    else
        g2=c*(-x(1) + x(2) - 3).^2;
    end
    if ((x(1) + x(2) - 7) <= 0)
        g3=0;
    else
        g3=c*(x(1) + x(2) - 7).^2;
    end
    if (((2/3)*x(1) - x(2) - 4/3) <= 0)
        g4=0;
    else
        g4=c*((2/3)*x(1) - x(2) - 4/3).^2;
    end
    
    f = fun(x) + g1 + g2 + g3 + g4;
    
end