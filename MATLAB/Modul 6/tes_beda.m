clear all;
clc;

% Finite difference method 
% Approximate the solution of y"=(-2/x)y'+(2/x^2)y+ sin(lnx)/x^2
% for 1<=x<=2 with y(1)=1 and y(2)=2.
 
% p = @(x) (-2/x);  
% q = @(x) (2/x^2);
% r = @(x) (sin(log(x))/x^2);

p = @(x) (2*x)/(1+(x^2));
q = @(x) (-2/(1+(x^2)));
r = @(x) (1);
 
aa = 0; bb = 4; alpha = 1.25; beta = -0.95; n=19;      % h = (bb-aa)/(n+1);   h=0.2


h = (bb-aa)/(n+1)
a = zeros(1,n+1);
b = zeros(1,n+1);
c = zeros(1,n+1);
d = zeros(1,n+1);
l = zeros(1,n+1);
u = zeros(1,n+1);
z = zeros(1,n+1);
w = zeros(1,n+1);
x = aa+h
a(1) = 2+h^2*q(x);
b(1) = -1+0.5*h*p(x);
d(1) = -h^2*r(x)+(1+0.5*h*p(x))*alpha;
m = n-1;

for i = 2 : m 
    x = aa+i*h;
    a(i) = 2+h^2*q(x);          %t_ii
    b(i) = -1+0.5*h*p(x);       % t_i,i+1
    c(i) = -1-0.5*h*p(x);         % t_i,i-1
    d(i) = -h^2*r(x);
end
 
x = bb-h;
a(n) = 2+h^2*q(x);
c(n) = -1-0.5*h*p(x);
d(n) = -h^2*r(x)+(1-0.5*h*p(x))*beta;
l(1) = a(1);
u(1) = b(1)/a(1);
z(1) = d(1)/l(1);
 
for i = 2 : m 
    l(i) = a(i)-c(i)*u(i-1);
    u(i) = b(i)/l(i);
    z(i) = (d(i)-c(i)*z(i-1))/l(i);
end
 
l(n) = a(n)-c(n)*u(n-1);
z(n) = (d(n)-c(n)*z(n-1))/l(n);
w(n) = z(n);

for j = 1 : m 
    i = n-j;
    w(i) = z(i)-u(i)*w(i+1);
end
i = 0;

fprintf('   x           w   \n');
fprintf('%5.4f    %11.8f\n', aa, alpha);
for i = 1 : n 
    x = aa+i*h;
    fprintf('%5.4f    %11.8f\n', x, w(i));
end
i = n+1;
fprintf('%5.4f    %11.8f\n', bb, beta);
 
