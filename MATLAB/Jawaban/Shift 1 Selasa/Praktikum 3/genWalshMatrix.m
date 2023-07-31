function W = genWalshMatrix(n)
% Ketik jawaban anda dibawah garis.
% ---------------------------------
    baseWalsh = 1;
    W = zeros(2^n);
    for i = 1:1:n
        W(1:2^i, 1:2^i) = [baseWalsh, baseWalsh; baseWalsh, -baseWalsh];
        baseWalsh = W(1:2^i, 1:2^i);
    end
end
