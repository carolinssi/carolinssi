function W = genWalshMatrix(n)
% Ketik jawaban anda dibawah garis.
% ---------------------------------
    m = 2^n;
    W = zeros(m,m);
    w = 1;
    i = 2;
    while i<=m
        w = [w,w ; w,-1*w];
        i = i.*2;
    end
    W = w;
end

