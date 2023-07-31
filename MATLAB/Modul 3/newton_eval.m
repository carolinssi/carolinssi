function p = newton_eval(t,x,a)
    n = length(x);
    for i = 1:length(t)
        d(1) = 1;
        c(1) = a(1);
        for j = 2:n
            d(j) = (t(i) - x(j-1)) .*d(j-1);
            % compute j-th term
            c(j) = a(j) .*d(j);
        end
        p(i) = sum(c);
    end
end


% function a = newton_coef(x,y)
% % calculate coefficients of Newton interpolating polynomial
%     n = length(x);
%     a(1) = y(1);
%     for k = 1:n-1
%         d(k,1) = (y(k+1) - y(k)) / (x(k+1) - x(k));
%         % 1st divided diff
%     end
%     for j = 2:n-1
%         for k = 1:n-j
%             d(k,j) = (d(k+1,j-1) - d(k,j-1)) / (x(k+j) - x(k));
%             %2nd divided diff
%         end
%     end
%     for j = 2 : n
%         a(j) = d(1, j-1);
%     end
% end