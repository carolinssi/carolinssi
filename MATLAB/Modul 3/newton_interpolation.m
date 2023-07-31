function yi = newton_interpolation(x,y,xi)
% Newton Interpolation Function
% x is indevendant variable vector
% y = devendant variable vector
% yi = debendant variable to be calculated
% xi = indebendant variable at which (yi) will be estimated

    % to check the length of the two vectors (x and y)
    n = length(x);
    if length(y) ~= n, error('x and y must have the same length'); end
    b = zeros(n,n); b(:,1) = y(:);
    for j = 2:n
        for i = 1: n-j + 1
            b(i,j) = (b(i+1, j-1) - b(i,j-1)) / (x(i+j-1) - x(i));
        end
    end
    
    % to interpolate xi at given (yi)
    xt = 1; yi=b(1,1);
    for j = 1: n-1
        xt = xt*(xi-x(j));
        yi = yi+b(1,j+1)*xt;
    end
end

    

