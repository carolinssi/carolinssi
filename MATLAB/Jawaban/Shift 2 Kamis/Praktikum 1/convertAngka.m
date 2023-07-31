function angka = convertAngka(char)
% Tuliskan jawaban anda dibawah garis
% -----------------------------------
    hasil_split = split(char, ' ');
    n = length(hasil_split);
    kunci = {'satu', 'dua', 'tiga', 'empat', 'lima', 'enam', 'tujuh', 'delapan', 'sembilan', 'sepuluh', 'sebelas', 'seratus'};
    nilai = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 100];
    dict = containers.Map(kunci, nilai);
    if n==1 % Tidak ada pemisah '', artinya hanya angka 1-11 ATAU 100 saja
        angka = dict(hasil_split{1});
    elseif n==2 % 12-19 ATAU puluhan kelipatan 10 ATAU ratusan kelipatan 100 ATAU 101-111
        if hasil_split{2} == "belas"
            angka = dict(hasil_split{1}) + 10;
        elseif hasil_split{2} == "puluh"
            angka = dict(hasil_split{1}) * 10;
        elseif hasil_split{2} == "ratus"
            angka = dict(hasil_split{1}) * 100;
        else % Kasus : seratus __
            angka = dict(hasil_split{2}) + 100;
        end
    elseif n==3 % n = 3, puluhan bukan kelipatan 10 ATAU ratusan bukan kelipatan 100 ATAU 
                % Kasus :'seratus __ puluh' ATAU Kasus : 'seratus __ belas'
        if hasil_split{1} == "seratus"
            if hasil_split{3}=="puluh"
                angka = dict(hasil_split{2})*10 + 100;
            else %Kasus : seratus __ belas
                angka = dict(hasil_split{2}) + 110;
            end
        else 
            if hasil_split{2} == "puluh" % Kasus : __ puluh __
                angka = dict(hasil_split{1})*10 + dict(hasil_split{3});
            else % Kasus : __ ratus __
                angka = dict(hasil_split{1})*100 + dict(hasil_split{3});
            end
        end
    elseif n==4 % Kasus : seratus ___ puluh ___ ATAU Kasus : __ ratus __ puluh
        if hasil_split{1}== "seratus"
            angka = dict(hasil_split{2})*10 + dict(hasil_split{4}) + 100;
        else
            angka = dict(hasil_split{1})*100 + dict(hasil_split{3})*10;
        end
    else % n=5, Kasus : ___ ratus ___ puluh ___
        angka = dict(hasil_split{1})*100 + dict(hasil_split{3})*10 + dict(hasil_split{5});
    end 
end