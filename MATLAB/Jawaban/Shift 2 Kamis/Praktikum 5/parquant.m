function[q] = parquant(alpha,beta,b,c,gamma)
% Ketik jawaban anda dibawah garis
% --------------------------------
% Mendefinisikan fungsi sebgai fungsi anonim
f = @(x) paromberg(alpha,beta,b,c,x)-gamma;
iter = 1;
x0 = -1;
x1 = -2;
selesai = 0;
eps = 10^(-6);
maks = 10^6;
while selesai == 0
    % Algoritma metode sekan biasa
    Fx0 = f(x0);
    Fx1 = f(x1);
    x2 = x1-Fx1*((x1-x0)/(Fx1-Fx0));
    Fx2 = f(x2);
    delta = abs((x2-x1)/x2);
    if delta<eps
        akar = ceil(x2);
        selesai = 1;
    end
    x0 = x1;
    Fx0 = Fx1;
    x1 = x2;
    Fx1 = Fx2;
    iter = iter + 1;
    if iter > maks
        akar = 'Proses belum konvergen.';
    end
end
q = akar;
end