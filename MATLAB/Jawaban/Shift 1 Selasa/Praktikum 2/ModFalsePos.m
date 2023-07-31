function akar = ModFalsePos(f, a, b, eps)
% Tulis jawaban anda dibawah garis
% --------------------------------
    fa = f(a);
    fb = f(b);
    if (fa*fb>0)
        akar = "Tebakan awal salah.";
        return
    end
    clama = 2*b-a;
    kiri = 0;
    kanan = 0;
    while 1
        c = a-fa*(b-a)/(fb-fa);
        fc = f(c);
        if (abs(fc)<1e-10)
            akar = c;
            return
        else 
            if (fa*fc<0)
                b = c;
                fb = fc;
                kanan = 0;
                kiri = kiri + 1;
                if kiri>2
                    fa = fa/2;
                end
            else
                a = c;
                fa = fc;
                kiri = 0;
                kanan = kanan + 1;
                if kanan>2
                    fb = fb/2;
                end
            end
        end
        if (abs(c-clama)<eps)
            akar = c;
            return
        end
        clama = c;
    end
end