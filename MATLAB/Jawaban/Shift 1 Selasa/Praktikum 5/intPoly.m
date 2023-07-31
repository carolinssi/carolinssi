function intPoly = intPoly(x)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    deg = length(x)-1;
    intres = [x 0] .* (1 ./ [deg+1:-1:1 1]);
    intPoly = polyval(intres, 1) - polyval(intres, -1);
end