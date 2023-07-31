% function [l,p,a] = lagrange_coef(x,y,p0)
function [p] = lagrange_coef(x,y,k)
    n = length(x);
    l = zeros(n,n);
    for i = 1:k+1 % untuk baris
        v =1;
        for j = 1:n % untuk membangun polinom
            if i~=j
                v = conv(v,poly(x(j))) / (x(i) - x(j));
            end
        end
        l(i,:) = v*y(i)
        p = sum(l);
        f = flip(p)
    end
%         for k = n:-1:2
%             fprintf('+ (%.2fx^%d) ' ,f(k),k-1)
%         end
%         fprintf('+(%.2f)\n',f(1))
%         a = polyval(p,p0);
%         X = linspace(x(1),x(n),100);
%         Y = polyval(p,X);
%         figure(2)
%         plot(X,Y,'r')
%         hold on
%         plot(x,y,'o')
%         hold off     
end
