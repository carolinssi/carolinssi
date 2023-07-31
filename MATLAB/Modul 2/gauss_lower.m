function x = gauss_lower(a,n)
[row,col]=size(a);
n = row;
x = zeros(n,1);

    % tahap eliminasi 
    for k = 1 : n-1
        m = k;
        for i=k+1:n
            if abs(a(i,k)) > abs(a(m,k))
                m = i
            end
        end
        if m ~= k
            for j = k : n+1
                s = a(k,j)
                a(k,j) = a(m,j)
                a(m,j) = s
            end  
        end
        if abs(a(k,k)) < 10^-15
            disp("proses gagal ke 1")
        end
        for i = k+1 : n
            p = a(i,k) / a(k,k)
            for j = k+1 : n+1
                a(i,j) = a(i,j) - (p*a(k,j))
            end
            a(i,k) = 0
        end
    end
    % tahap penyulihan mundur:
    if abs(a(n,n)) < 10^-15 
        disp("error")
    end
    x(n) = a(n,n+1) / a(n,n);
    for k = n-1 : -1 :1
        s = 0
        for i = k+1:n
            s = s + (a(k,i)*x(i))
        end
        x(k) = (a(k,n+1) - s) / a(k,k)
    end
    a
    det = 1;
    for i = 1:n
        det = det * a(i,i);
    end
    fprintf("Determinan matriks = %d",det);
end
           

       