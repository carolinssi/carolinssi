function akar = metodeBagiDua(f,a,b,eps)
% sebuah fungsi pada MATLAB untuk mencetak akar hampiran akar dari fungsi 
% dengan menggunakan metode Bagi Dua menerima masukan 
% suatu fungsi f(x), tebakan awal a dan b serta batas galat eps
    fa = f(a);
    fb = f(b);
    % ALGORITMA 
    if fa*fb > 0
        disp("PROSES GAGAL")
        akar = "tidak ditemukan";
    else
        akar = 0;
        i= 1;
        while akar == 0 
            c = (a+b)/2;
            fc = f(c);
            if abs(fc) < 10^-10
                akar = c;
            else
                if fa*fc < 0
                    b = c;
                    fb = fc;
                else
                    a = c;
                    fa = fc;
                end
            end
            if (b-a) < eps
                akar = c;
            end
            i = i+1;
        end
    end
    i = i - 2;
    fprintf("akar = %s\n Didapat pada iterasi ke- %d dengan ",akar,i)
end

