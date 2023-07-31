function integral = simpson_3per8(f,a,b,n)
% f fungsi f(x)
% a batas bawah
% b batas atas 
% n tingkat keakuratan
    integral = f(a) +f(b);
    h = (b-a)/(n);
    sum1 = 0.0;
    for i = 1:3:n-2
        x = a + i*h;
        sum1 = sum1 + f(x);
    end
    sum2 = 0.0;
    for i = 2:3:n-1
        x = a + i*h;
        sum2 = sum2 + f(x);
    end
    sum3 = 0.0;
    for i = 3:3:n-3
        x = a + i*h;
        sum3 = sum3 + f(x);
    end
    integral = (3*h/8) * (integral +3*sum1 + 3*sum2 + 2*sum3);
end