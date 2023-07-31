function I = GLIntegral(f, a, b, n)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    g = @(x)f((x + 1)*(b-a)/2 + a)*(b-a)/2;
    [W,X] = GLweights(genLegPoly(n));
    I = sum(W .* g(X));
end