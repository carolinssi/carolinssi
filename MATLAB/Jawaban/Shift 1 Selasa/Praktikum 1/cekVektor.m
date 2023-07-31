function jenis = cekVektor(X)
% Tuliskan jawaban anda dibawah garis
% -----------------------------------
    X = sort(X, 'descend');
    jiwa = false;
    mantap = false;
    for i=1:length(X)
        cek = X(i);
        for j=length(X):-1:i+1
            if (X(j).^2 == cek)
                mantap = true;
            end
            if (X(j).^3 == cek)
                jiwa = true;
            end
        end
    end
    if (mantap == true & jiwa == false)
        jenis = "Mantap";
    elseif (mantap == false & jiwa == true)
        jenis = "Jiwa";
    elseif (mantap == true & jiwa == true)
        jenis = "Mantap Jiwa";
    else
        jenis = "Biasa";
    end
end