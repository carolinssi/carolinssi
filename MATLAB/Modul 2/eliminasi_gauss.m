function x = eliminasi_gauss(a,b);
[row,col]=size(a);
n = row;
x = zeros(n,1);
C = [a,b]
% tahap eliminasi 
   for k=1:n-1
       if abs(a(k,k)) < 10^-15
           disp('proses gagal')
       end
       for i=k+1:n
           p = a(i,k)/a(k,k);
           fprintf("\nDilakukan (%d*b%d) + b%d\n",-p,k,i)
           for j=k+1:n
               a(i,j) = a(i,j) - p*a(k,j);
           end
           b(i) = b(i) - p*b(k);
           a(i,k) = 0;
           C = [a,b]
       end
% tahap penyulihan mundur:
       if abs(a(n,n)) < 10^-15
           disp("proses gagal")
       end
       x(n) = b(n)/a(n,n);
       for i=n-1:-1:1
       s = b(i);
           for j=i+1:n
               s = s - a(i,j)*x(j);
           end
           x(i) = s/a(i,i);
       end
   end
end

% for i=1:n-1
% %     fprintf('\n\t\t\t\ti = %d',i);
%     for j=i+1:n;
% %         fprintf('\n\t\t\t\tj = %d',j);
%         m = a(j,i)/a(i,i);
%         a(j,:) = a(j,:) - m*a(i,:);
%     end
% end
% x(n) = a(n,n+1)/a(n,n);
% for i=n-1:-1:1
% %     fprintf('\n\t\t\t\tiii = %d',i);
%     summ = 0;
%     for j=i+1:n
% %         fprintf('\n\t\t\t\tjjj = %d',j);
%         summ = summ + a(i,j)*x(j,:);
%         x(i,:) = (a(i,n+1) - summ)/a(i,i);
%     end
% end
% x 