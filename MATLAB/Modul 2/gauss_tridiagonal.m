function x = gauss_tridiagonal(A,b);
n = length(A) - 1
b = A(:,n+1);   
x = zeros(1,n);

%% inisiasi d(i)
    for i = 1 : n
        d(i) = A(i,i);
    end
%% inisiasi c(i)
    for j = 2 : n+1
        c(j-1) = A(j-1,j);
    end
%% inisiasi a(i)    
    for k = 2:n
        a(k) = A(k,k-1);
    end
    
%% tahap eliminasi 
   for k=1:n-1
       if abs(d(k)) < 10^-15
           disp('proses gagal')
       end
       p = a(k+1) / d(k);
       d(k+1) = d(k+1) - p*c(k);
       b(k+1) = b(k+1) -p*b(k);
       a(k+1) = 0;
      
%% tahap penyulihan mundur:
       if abs(d(n)) < 10^-15
           disp("SPL singular")
       end
       x(n) = b(n)/d(n);
       for k=n-1:-1:1
           x(k) = (b(k) - c(k)*x(k+1)) / d(k);
       end     
   end
end

