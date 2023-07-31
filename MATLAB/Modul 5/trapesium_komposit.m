function s=trapesium_komposit(f,a,b,M)
%Input - f is the integrand input as a string ’f’
% - a and b are upper and lower limits of integration
% - M is the number of subintervals
%Output - s is the trapezoidal rule sum
    h=(b-a)/M;
    s=0;
    s = zeros(1,1);
    for k=1:(M-1)
        x=a+h*k
        s=s+feval(f,x)
    end
    s=h*(feval(f,a)+feval(f,b)/2) +h*s
end