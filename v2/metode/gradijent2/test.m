
clc
clear all

gamma=0.1;
tol=10^-5;
x0=[3;3]
[xopt,fopt,niter,gnorm,dx] = grad_descent(@func,@grad,gamma, tol,x0)


