function yi = lagrange_interpolation(x,y,xi)
% Lagrange Interpolation Function
% x is indevendant variable vector
% y = devendant variable vector
% yi = debendant variable to be calculated
% xi = indebendant variable at which (yi) will be estimated

    n = size(x,2);
    L = ones(n,size(xi,2));
    if (size(x,2) ~= size(y,2))
        fprintf(1,'\nERROR! \n x and y must have the same number of elemets\n')
        yi = NaN;
    else
        for i = 1:n
            for j = 1:n 
                if (i~=j)
                    L(i,:) = L(i,:) .*(xi - x(j)) / (x(i) - x(j));
                end
            end
        end
        yi = 0;
        for i = 1:n
            yi = yi + y(i)*L(i,:);
        end
    end
end
