function integral = boole(f,a,b,n)
    h = (b-a)/(n);
    integral = 7*(f(a) + f(b));
    for i = 2:2:(n-2)
        x = a + i*h;
        integral = integral + 12*f(x);
    end
    for i = 1:2:(n-1)
        x = a + i*h;
        integral = integral + 32*f(x);
    end
    integral = integral*2*h/45;
end