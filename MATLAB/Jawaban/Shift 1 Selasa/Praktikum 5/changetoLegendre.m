function y = changetoLegendre(x)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    y = zeros(length(x));
    for i = 1:length(x)
        y(i, :) = x(i, :) ./ polyval(x(i, :), 1);
    end
end