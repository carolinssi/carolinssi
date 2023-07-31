function x = solveSPL(A, b)
% Ketik jawaban anda dibawah garis.
% ---------------------------------
    [L, U] = doolittleLUDecomp(A);
    n = length(L);
    x = b;
    for i = 1 : 1 : n
        x(i+1:n) = (x(i+1 : n) - x(i) * L(i+1:n, i)) ;
    end
    for i = n : -1 : 1
        x(i) = x(i)/U(i, i);
        x(1 : i-1) = (x(1 : i-1) - U(1 : i-1, i)*x(i));
    end
end
