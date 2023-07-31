function x = gauss_seidel(a,x)
eps = 10^-6;
maksiter =30;
n = length(a) - 1;
b = a(:,n+1);
x = [2;2;6;3];
% algoritma
iter = 0;
    for i = iter : maksiter 
        if iter < maksiter
            galat = 0;
            for i = 1:n
                s = 0;
                for j = 1:n
                    if i ~= j
                        s = a(i,j)*x(j) + s;
                    end
                end
                xbaru(i) = (b(i) - s) / a(i,i);
                s = abs((xbaru(i) - x(i)) / xbaru(i));
                if s > galat 
                    galat = s;
                end
                x(i) = xbaru(i);
            end
            if galat < eps
                disp("selesai");
                break
            end
            iter = iter + 1;
            if iter > maksiter 
                disp("proses belum konvergen");
                break
            end
        end
        fprintf("\tx1\tx2\tx3\tx4\t\n")
        x'
    end
end
