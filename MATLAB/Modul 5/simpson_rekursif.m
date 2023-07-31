function S=simpson_rekursif(f,a,b,n)
% recursive trapezoidal integration
%Input  - f is the integrand input as a string 'f'
%       - a and b are upper and lower limits of integration
%       - n is the number of times for recursion
%Output - T is the recursive trapezoidal rule list

% NUMERICAL METHODS: MATLAB Programs
%(c) 1999 by John H. Mathews and Kurtis D. Fink
%To accompany the textbook:
%NUMERICAL METHODS Using MATLAB,
%by John H. Mathews and Kurtis D. Fink
%ISBN 0-13-270042-5, (c) 1999
%PRENTICE HALL, INC.
%Upper Saddle River, NJ 07458
    M=1;
    h=b-a;
    T=zeros(1,n+1);
    T(1)=h*(feval(f,a)+feval(f,b))/2;

    for j=1:n
       M=2*M;
       h=h/2;
       s=0;
       for k=1:M/2
          x=a+h*(2*k-1);
          s=s+feval(f,x);
       end
       T(j+1)=T(j)/2+h*s;
    end
    S = zeros(1,1);
    for i = 1:n
        S(i+1) = ((4/3)*(T(i+1))) - ((1/3)*(T(i))); 
end