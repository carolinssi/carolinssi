function x = jacobi (a,x)
n= size(a,1);
eps = 10^-6;
maksiter =30;
b = a(:,n+1);
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
            end
            for i = 1:n
                x(i) = xbaru(i);
            end
            
            if galat < eps
                disp("selesai");
            end
            iter = iter + 1;
            if iter > maksiter 
                disp("proses belum konvergen");
            end
        end
        fprintf("\tx1\tx2\tx3\tx4\t\n")
        x'
    end
    
end
