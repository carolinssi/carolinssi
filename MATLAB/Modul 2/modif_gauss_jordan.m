function  X_inv = modif_gauss_jordan(n,X)
% fungsi yang menerima input matriks persegi X ukuran n x n
% Jika matriks X invertible, maka fungsi akan mengeluarkan inversnya
% Jika matriks X singulat, maka fungsi akan menghasilkan keluaran
% string "Matriks ini singular"
X
    if abs(det(X)) > 10^(-13)
        fprintf("matriks invertible\n")
        %menambahkan matriks satuan
        n2 = 2*n;
        for i = (1:n)
            for j = (n+1:n2)
                if (i+n) == j
                    X(i,j) = 1;
                else
                    X(i,j) = 0;
                end
            end
        end
        
        %tahap eliminasi
        for k = (1:n)

           %mencari elemen pada j yang besar
           m = k;
           for i = (k+1:n)
                if abs(X(i,k)) > abs(X(m,k))
                    m = i;
                end
           end
            
           %menukar baris i = j dengan baris  X(i,j) terbesar
           if m ~= k
               for j = (k:n2)
                   s = X(k,j);
                   X(k,j) = X(m,j);
                   X(m,j) = s;
               end
           end
           fprintf("\n------>b%d ditukar ke b%d\n",m,k)
           X

           if abs(X(k,k)) < 10^(-12)
               X_inv = fprintf("error")
               break
           
           else 
               p = X(k,k);
               for j = (k:n2)
                   X(k,j) = X(k,j)/p;
               end
               fprintf("\nb%d dibagi %d",k,p)
               X
               for i = (1:n)
                   if i ~= k
                       p = X(i,k);
                       for j = (k+1:n2)
                           X(i,j)=X(i,j)- p*X(k,j);
                       end
                       fprintf("\nDilakukan (%d*b%d) + b%d\n",-p,k,i)
                       X(i,k)=0 ;
                       X
                   end
               end

           end
           
        end
        X_inv = X(:,n+1 : n2);
    else
        X_inv = "Matriks ini singular";
    end
    
end