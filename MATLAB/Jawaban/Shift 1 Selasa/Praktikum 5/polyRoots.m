function roots = polyRoots(x)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    changes = signChange(x);
    roots = zeros(1, size(changes, 1));
    for i = 1:size(changes, 1)
        bracket = changes(i, :);
        roots(i) = newtonRaphson(x, bracket);
        polyval(x, roots(i));
    end
end