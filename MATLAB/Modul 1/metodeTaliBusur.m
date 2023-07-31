function akar = metodeTaliBusur(f,x0,x1,eps,maks)
% sebuah fungsi pada MATLAB untuk mencetak akar hampiran akar dari fungsi 
% dengan menggunakan metode Tali Busur/Sekan menerima masukan 
% suatu fungsi f(x), tebakan awal a dan b serta batas galat eps
    i = 1;
    f0 = f(x0);
    f1 = f(x1);
    akar = 1000;
    while akar == 1000
        x2 = x1 - f1*(x1-x0)/(f1-f0);
        f2 = f(x2);
        delta = abs(x2 - x1)/abs(x2);
        if delta < eps
            akar = x2;
        end
        x0 = x1;
        f0 = f1;
        x1= x2;
        f1 = f2;
        i = i + 1;
        if i > maks
            disp("proses belum konvergen")
        end
    end
    fprintf("akar = %s\n Didapat pada iterasi ke- %d dengan ",akar,i)
end

