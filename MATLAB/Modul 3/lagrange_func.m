function p = lagrange_func(X,Y,k)
    syms x 
    sum = 0 ;
    for i = 1:k+1
        pr = Y(i);
        for j = 1:k+1
            if i~=j
                pr = pr *(x-X(j)) / (X(i) - X(j));
                l = matlabFunction(pr);
            end
        end
        sum = sum + pr;
    end
    p = matlabFunction(sum);               
end

