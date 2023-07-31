function akar = metodePosisiPalsu(f,a,b,eps)
% sebuah fungsi pada MATLAB untuk mencetak akar hampiran akar dari fungsi 
% dengan menggunakan metode Posisi Palsu menerima masukan 
% suatu fungsi f(x), tebakan awal a dan b serta batas galat eps
    fa = f(a);
    fb = f(b);
    % ALGORITMA 
    if fa*fb > 0
        disp("PROSES GAGAL")
        akar = "tidak ditemukan";
    else
        i = 1;
        clama = 2*b - a ;
        akar = 0;
        while akar == 0 
            c = b - fb*(b-a) / (fb-fa);
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
            if abs(c - clama) < eps
                akar = c;
            end
            clama = c;
            i = i + 1;
        end    
    end
    i = i - 2;
    fprintf("akar = %s\n Didapat pada iterasi ke- %d dengan ",akar,i)
end

