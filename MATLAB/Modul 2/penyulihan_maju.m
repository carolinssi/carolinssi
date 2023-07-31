function x = penyulihan_maju(a)
    [n,k]= size(a);
    if abs(a(n,n)) < 10^-12
        x = "proses gagal"
    end
    x(1) = a(1,n+1)/a(1,1)
    for k = 2:n
        if abs(a(k,k)) < 10^-12
            x = "proses gagal"
        end
        s = 0;
        for i = 1:k-1
            s = s + a(k,i)*x(i);
        end
        x(k) =( a(k,n+1) - s)/a(k,k);
end

