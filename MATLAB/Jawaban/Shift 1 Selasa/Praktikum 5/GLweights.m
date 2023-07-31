function [W,X] = GLweights(P)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    X = roots(P);
    W = 2 ./ (1 - X.^2)./(polyval(turunan(P), X))./(polyval(turunan(P), X));
end