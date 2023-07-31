function [L, U] = doolittleLUDecomp(A)
% Ketik jawaban anda dibawah garis.
% ---------------------------------
    n = length(A);
    L = eye(n);
    U = zeros(n);
    for i = 1:1:n
        for j = i:1:n
            U(i,j) = (A(i, j) - L(i, 1:(j-1)) * U(1:(j-1), j))/L(i, i);
        end
        for j = i+1:1:n
            L(j, i) = (A(j, i) - L(j, 1:(i-1))*U(1:(i-1), i))/U(i, i);
        end
    end
end
