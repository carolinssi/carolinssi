function akar = metodePolinom(a,z,eps,maks)
    n = length(a)
    iter = 1
    p = n - 1
    akar = zeros(1,p)
    while p < n & p > 1
        b(n)=a(n)
        c(n)=b(n)
        while n > 1
            i = n - 1 
            b(i) = a(i) + b(i+1)*z
            c(i) = b(i) + c(i+1)*z
            n = n - 1
        end
        b(1) = a(1) + b(2)*z 
        if abs(c(2)) < 10^-12
            disp("PROSES GAGAL")
        end
        zbaru = z - b(1)/c(2)
        delta = abs(zbaru - z) / abs(zbaru)
        if delta < eps 
            akar(p) = zbaru 
            B = [-akar(p),1]
            [s d] = deconv(a,B)
            a = s
            p = p - 1
        end
        z = zbaru 
        iter = iter + 1 
        if iter > maks
            disp("Proses belum konvergen")
        end
        if p == 0 
            disp("SELESAI")
        end
    end
end