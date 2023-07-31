function [D,Unew] = genDforLDU(L,U)
n = length(U);
D = diag(diag(U));
for i=1:n
    Unew(i, 1:n) = U(i, 1:n) / D(i,i);
end
end