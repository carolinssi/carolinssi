function x = solveSPL(A,b)
% Ketik jawaban anda dibawah garis.
% ---------------------------------
%% Dekomposisi Doolittle 
% untuk mencari L dan U
[n,n]=size(A);
% % [L,U] = lu(A)
% U = A;
% L = zeros(n,n);
% for i = 1 : n-1;
%     if abs(U(i,i))> 0
%         for k = i+1:n;
%             m(k,i) = U(k,i)/U(i,i);
%             for j = 1 : n
%                 U(k,j) = U(k,j) - m(k,i)*U(i,j);
%             end;
%         end;
%     end;
% end;
% for i = 1 :n;
%     L(i,1) = A(i,1)/U(1,1);
% end
% for j = 2:n;
%     for i = 2:n;
%         s = 0;
%         for k = 1:j-1;
%             s = s + L(i,k)*U(k,j);
%         end;
%         L(i,j) = (A(i,j) - s)/U(j,j);
%     end;
% end;

[L, U] = doolittleLUDecomp(A);
%% mencari solusi SPL
y(1) = b(1)/L(1,1);
for k = 2:n;
    sum = b(k);
    for i = 1 : k - 1;
        sum = sum - L(k,i)*y(i);
    end;
    y(k) = sum/L(k,k);
end;
X(n) = y(n)/U(n,n);
for k = n-1:-1:1;
    sum = y(k);
    for i = k+1:n;
        sum = sum - U(k,i)*X(i);
    end;
    X(k) = sum/U(k,k);
end;
x = X';
end

