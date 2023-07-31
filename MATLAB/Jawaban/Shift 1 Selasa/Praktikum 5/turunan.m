function d = turunan(x)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    degree = length(x) - 1;
    d = x(1:length(x)-1) .* [degree:-1:1];
end
    