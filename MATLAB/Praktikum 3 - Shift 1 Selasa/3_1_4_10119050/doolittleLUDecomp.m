function [L, U] = doolittleLUDecomp(A)
% Ketik jawaban anda dibawah garis.
% ---------------------------------
 [n,n]=size(A);
% [L,U] = lu(A)
U = A;
L = zeros(n,n);
    for i = 1 : n-1;
        if abs(U(i,i))> 0
            for k = i+1:n;
                m(k,i) = U(k,i)/U(i,i);
                for j = 1 : n
                    U(k,j) = U(k,j) - m(k,i)*U(i,j);
                end;
            end;
        end;
    end;
    for i = 1 :n;
        L(i,1) = A(i,1)/U(1,1);
    end
    for j = 2:n;
        for i = 2:n;
            s = 0;
            for k = 1:j-1;
                s = s + L(i,k)*U(k,j);
            end;
            L(i,j) = (A(i,j) - s)/U(j,j);
        end;
    end;
%     disp("Matrik Segitiga Bawah")
%     L
%     disp("Matrik Segitiga Atas")
%     U
%     
end
