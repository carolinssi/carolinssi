function [a,b] = lagrange(x,y)
% x is a vector that contains a list of abscissas
% y is a vector that contains a list of ordinates
% a is a matrix that contains the coefficients of the Lagrange interpolatory polynomial
% b is a matrix that contains the Lagrange coefficients polynomials
    w = length(x);
    n = w -1 ;
    b = zeros(w,w);
    % for the Lagrange coefficient polynomials
    for k = 1:n+1
        v = 1;
        for j = 1 : n+1
            if k~= j
                v = conv(v, poly(x(j))) / (x(k) - x(j));
            end
        end
        b(k,:) = v; 
    end
    % determine the coefficients of the Lagrange interpolating
    % polynomial
    a = y*b;
end
