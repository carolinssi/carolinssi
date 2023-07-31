function akar = metodeNewtonRaphson(f,df,x,eps,maks)
% sebuah fungsi pada MATLAB untuk mencetak akar hampiran akar dari fungsi 
% dengan menggunakan metode Newton Raphson menerima masukan 
% suatu fungsi f(x), tebakan awal a dan b serta batas galat eps
   i = 1;
    akar = 1000;
    while akar == 1000
        d = df(x);
        if abs(d) < 10^-12
            disp("PROSES GAGAL")
        end
        xbaru = x - f(x)/d;
        delta = abs(xbaru - x) / abs(xbaru);
        if delta < eps
            akar = xbaru;
        end
        x = xbaru; 
        i = i + 1;
        if i > maks
            disp("proses belum konvergen")
        end
    end
    i = i - 1;
    fprintf("akar = %s\n Didapat pada iterasi ke- %d dengan ",akar,i)
end

