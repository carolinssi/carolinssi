function y = gramSchmidt(x)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    y(1, :) = x(1, :);
    for i = 2:size(x, 1)
        projs = zeros(1, length(x));
        for j = 1:i-1
            innerProd = intPoly(conv(x(i, :), y(j, :)));
            norm = intPoly(conv(y(j, :), y(j, :)));
            projs = projs + (innerProd/norm) * y(j, :);
        end
        y(i, :) = x(i, :) - projs;
    end
end