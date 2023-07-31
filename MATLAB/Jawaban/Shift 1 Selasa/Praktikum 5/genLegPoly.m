function x = genLegPoly(n)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    elem_base = flip(eye(n+1),1);
    legPolys = changetoLegendre(gramSchmidt(elem_base));
    x = legPolys(n+1, :);
end