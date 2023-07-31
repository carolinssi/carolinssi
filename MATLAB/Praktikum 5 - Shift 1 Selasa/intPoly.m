function intPoly = intPoly(x)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    n = length(x);
    f = zeros(1,n+1);
    for i = 1:n
        f(i) = (1/(n-i+1))*x(i);
    end
    intPoly = polyval(f,1) -  polyval(f,-1);   
end