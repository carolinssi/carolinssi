function p = lagrange_full(t,x,c)
% evaluate the Lagrange Interpolation polynomial at point x = t
    c = @lagrange_coef;
    m = length(x);
    for i = 1:length(t)
        p(i) = 0;
        for j = 1 : m
            N(j) = 1;
            for k = 1 : m
                if (j~=k)
                    N(j) = N(j) * (t(i) - x(k));
                end
            end
            p(i) = p(i) + N(j) * c(j);
        end
    end
    
   %%
    function c = lagrange_coef(x,y)
    % calculate coefficients of lagrange interpolating polynomial
        n = length(x);
        for k = 1:n
            d(k) = 1;
            for i = 1:n
                if i ~= k
                    d(k) = d(k) * (x(k) - x(i));
                end
                c(k) = y(k) / d(k) ;
            end
        end
    end
end
