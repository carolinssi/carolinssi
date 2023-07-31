function [x,w] = ode_bvp(p,q,r,a,b,alpha,beta,h)

    n = (b-a)/(h) - 1;
    aa= zeros(1,n+1);
    bb= zeros(1,n+1);
    cc= zeros(1,n+1);
    dd= zeros(1,n+1);
    l = zeros(1,n+1);
    u = zeros(1,n+1);
    z = zeros(1,n+1);
    w = zeros(1,n+1);
    x = a+h;
    aa(1) = 2+h^2*q(x);
    bb(1) = -1+0.5*h*p(x);
    dd(1) = -h^2*r(x)+(1+0.5*h*p(x))*alpha;
    m = n-1;

    for i = 2 : m 
        x = a+i*h;
        aa(i) = 2+h^2*q(x);          
        bb(i) = -1+0.5*h*p(x);       
        cc(i) = -1-0.5*h*p(x);         
        dd(i) = -h^2*r(x);
    end

    x = b-h;
    aa(n) = 2+h^2*q(x);
    cc(n) = -1-0.5*h*p(x);
    dd(n) = -h^2*r(x)+(1-0.5*h*p(x))*beta;
    l(1) = aa(1);M
    u(1) = bb(1)/aa(1);
    z(1) = dd(1)/l(1);

    for i = 2 : m 
        l(i) = aa(i)-cc(i)*u(i-1);
        u(i) = bb(i)/l(i);
        z(i) = (dd(i)-cc(i)*z(i-1))/l(i);
    end

    l(n) = aa(n)-cc(n)*u(n-1);
    z(n) = (dd(n)-cc(n)*z(n-1))/l(n);
    w(n) = z(n);

    for j = 1 : m 
        i = n-j;
        w(i) = z(i)-u(i)*w(i+1);
    end
    i = 0;

    fprintf('   x           w   \n');
    fprintf('%5.4f    %11.8f\n', a, alpha);
    for i = 1 : n 
        x = a+i*h;
        fprintf('%5.4f    %11.8f\n', x, w(i));
    end
    i = n+1;
    fprintf('%5.4f    %11.8f\n', a, beta);
end
