function X = trisys(A,D,C,B)
%% To solve the tridiagonal system CX = B, where C is a tridiagonal matrix.
% Input         - A is the subdiagonal of the coefficient matrix
%                 - D is the main diagonal of the coefficient matrix
%                 - C is the superdiagonal of the coefficient matrix
%                 - B is the constant vector of the linear systems
%                 - n and m number of grid points over [0,a] and [0,b]
% Output      - X is the solution vector
    N = length(B);
    for k = 2:N
        mult = A(k-1)/D(k-1);
        D(k) = D(k) - mult*C(k-1);
        B(k) = B(k) - mult*B(k-1);
    end
    X(N) = B(N)/D(N);
    for k = N-1: -1: 1
        X(k) =(B(k)-C(k)*X(k+1))/D(k);
    end
end
