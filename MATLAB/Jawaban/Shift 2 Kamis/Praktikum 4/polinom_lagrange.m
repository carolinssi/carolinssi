function [p_n] = polinom_lagrange(X,Y)
syms x;
p_n = 0;
n = length(X);
for i=1:n
    sum = Y(i);
    for j=1:n
        if j~=i
            sum = sum*(x-X(j))/(X(i)-X(j));
        end
    end
    p_n = p_n + sum;
end
p_n = matlabFunction(p_n);
end