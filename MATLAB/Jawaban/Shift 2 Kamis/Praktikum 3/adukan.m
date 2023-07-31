function Y = adukan(F_1, Y_in, F_2, X_in, K, n)
% Generate matriks M dan B untuk SPL MY=B
    D(1:n) = -(1+F_2*K/F_1);
    A(1) = 0;
    A(2:n) = ones(1,n-1);
    C(1:n-1) = F_2*K/F_1;
    C(n) = 0;
    B(1) = -Y_in;
    B(n) = -F_2*X_in/F_1;
% Tahap Eliminasi
    for k=1:n-1
        if(abs(D(k))<1e-15)
            Y = "Proses gagal";
            return
        end
        p = A(k+1) / D(k);
        D(k+1) = D(k+1) - p*C(k);
        B(k+1) = B(k+1) - p*B(k);
        A(k+1) = 0;
    end
% Tahap penyulihan mundur
    if (abs(D(n))<1e-15)
        Y = "Proses singular";
        return
    end
    Y(n) = B(n)/D(n) ;
    for k=n-1:-1:1
        Y(k) = (B(k) - C(k)*Y(k+1)) / D(k);
    end
end