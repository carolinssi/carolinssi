function x = penyulihan_mundur(a)
    [n,k]= size(a);
    if abs(a(n,n)) < 10^-12
        x = "proses gagal"
    end
    x(n) = a(n,n+1)/a(n,n);
    for k = n-1:-1:1
        if abs(a(k,k)) < 10^-12
            x = "proses gagal"
        end
        s = 0;
        for i = k+1:n
            s = s + a(k,i)*x(i);
        end
        x(k) =( a(k,n+1) - s)/a(k,k);
end

