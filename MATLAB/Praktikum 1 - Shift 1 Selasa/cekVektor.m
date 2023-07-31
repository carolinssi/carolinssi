function jenis = cekVektor(X)
% Tuliskan jawaban anda dibawah garis
% -----------------------------------
    
    j = length(X);
    a = "Tidak Mantap";                                             % inisialisasi a variabel a menyimpan jenis vektor apakah mantap atau tidak mantap
    b = "Tidak Jiwa";                                                   % inisialisasi a variabel a menyimpan jenis vektor apakah jiwa atau tidak jiwa
    for i = 1:length(X);                        % melakukan pengulangan dari i = 1:n
        while  j > 1;
            if X(i) == X(j)^2 | X(j) == X(i)^2;   % pengecekan apakah vektor X merupakan jenis mantap
                a = "Mantap";
                j = j - 1;
            elseif X(i) == X(j)^3 | X(j) == X(i)^3;         % pengecekan apakah vektor X merupakan jenis jiwa
                b = "Jiwa";
                j = j - 1;
            else
                j = j -1;
            end
        end
    end
    %% OUTPUT
    if a == "Mantap" & b =="Tidak Jiwa";
        jenis = "Mantap";
    end
    if b == "Jiwa" & a == "Tidak Mantap";
        jenis = "Jiwa";
    end
    if a == "Mantap" & b == "Jiwa";
        jenis = "Mantap Jiwa";
    end
    if a ~= "Mantap" & b ~= "Jiwa"
        jenis = "Biasa";
    end
end
