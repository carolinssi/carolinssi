function x = gauss_penumpuan_parsial(a)
[row,col]=size(a);
n = row;
x = zeros(n,1);
a
    % tahap eliminasi 
    for k = 1 : n-1
%         fprintf("k= %d",k)
        m = k;
        for i=k+1:n
%             fprintf("i= %d",i)
            if abs(a(i,k)) > abs(a(m,k))
                m = i;
            end
        end
        % mengganti baris dengan pivot tumpuan terbesar
        if m ~= k
            for j = k : n+1
                s = a(k,j);
                a(k,j) = a(m,j);
                a(m,j) = s;
            end  
        end
        fprintf("\n------>b%d ditukar ke b%d\n",m,k)
        a
        if abs(a(k,k)) < 10^-15
            disp("proses gagal ke 1")
        end
        for i = k+1 : n
            p = a(i,k) / a(k,k);
            fprintf("\nDilakukan (%d*b%d) + b%d\n",-p,k,i)
            for j = k+1 : n+1
                a(i,j) = a(i,j) - (p*a(k,j));
            end
            a(i,k) = 0;
            a
        end
    end
    % tahap penyulihan mundur:
    if abs(a(n,n)) < 10^-15 
        disp("error")
    end
    x(n) = a(n,n+1) / a(n,n);
    for k = n-1 : -1 :1
        s = 0;
        for i = k+1:n
            s = s + (a(k,i)*x(i));
        end
        x(k) = (a(k,n+1) - s) / a(k,k);
    end
    a
    det = 1;
    for i = 1:n
        det = det * a(i,i);
    end
    fprintf("Determinan matriks = %d\n",det);
end
           

       