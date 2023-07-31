function root = newtonRaphson(x, bracket)
% Ketik jawaban anda dibawah garis.
% --------------------------------
%     bracket = signChange(x);
    dfx = turunan(x);
    root = bracket(1);
    while (abs(polyval(x, root)) > 1e-10)
        root = root - polyval(x, root)/polyval(dfx, root);
    end
end