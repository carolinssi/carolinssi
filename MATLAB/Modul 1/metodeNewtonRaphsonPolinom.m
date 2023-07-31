function akar = metodeNewtonRaphsonPolinom(a,n,z,eps,maks)

    iter = 1
    p = n - 1
    akar = zeros(1,p)
    while p < n & p > 1
        b(n)=a(n)
        c(n)=b(n)
        for j =(2:1:n)
            fprintf("j= %d " , j);
            for i =(n-1:-1:2)
               fprintf("i= %d " , i)
                %perhitungan b
                b(i)=a(i)+b(i+1)*z
                %perhitungan c
                c(i)=b(i)+c(i+1)*z
            end

            b(1)=a(1)+b(2)*z

            if abs(c(2)) < 10^-12
                disp("proses gagal ")
            end

            x(j)=z-(b(1)/c(2));
            delta = abs(x(j) - z) / abs(x(j));

            if delta < eps
                akar(p) = x(j)
                B = [-akar(p), 1]
                [s d] = deconv(a,B)
                a = s
                p = p - 1
            end
            disp(b)
            disp(c)
            z = x(j)  
            iter = iter + 1
            if iter > maks
                disp("proses belum konvergen")
            end
            if p == 0
                disp("SELESAI")
                break
            end
        end
end