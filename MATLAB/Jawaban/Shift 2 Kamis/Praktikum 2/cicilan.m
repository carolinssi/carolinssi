function n = cicilan(i, A, P, Q)
% Tulis jawaban anda dibawah garis
% -------------------------------
    % Fungsi yang sudah rampung yang dicari akarnya ialah
    % f(n) = P((1-v^n)/i)+Q((1-v^n)/i-nv^n)/i-A
    v = 1/(1+i);
    % Mendefinisikan fungsi sebgai fungsi anonim
    f = @(P,v,i,n,Q,A) P*((1-v^n)/i) + Q*(((1-v^n)/i)-n*v^n)/i-A;
    % atau f = @(P,v,i,n,Q,A) P*((1-v^n)/i) + Q*(((1-v^(n-1))/i)-(n-1)*v^n)/i-A;
    iter = 1;
    x0 = 1;
    x1 = 2;
    selesai = 0;
    eps = 10^(-6);
    maks = 10^6;
    while selesai == 0
        % Algoritma metode sekan biasa
        Fx0 = f(P,v,i,x0,Q,A);
        Fx1 = f(P,v,i,x1,Q,A);
        x2 = x1-Fx1*((x1-x0)/(Fx1-Fx0));
        Fx2 = f(P,v,i,x2,Q,A);
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
    n = akar;
end