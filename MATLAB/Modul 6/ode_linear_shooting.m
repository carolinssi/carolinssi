% Linear shooting
% Approximate the solution of y"=(-2/x)y'+(2/x^2)y+ sin(lnx)/x^2
% for 1<=x<=2 with y(1)=1 and y(2)=2.


clear all;
clc;

% p = @(x) (-2/x);  
% q = @(x) (2/x^2);
% r = @(x) (sin(log(x))/x^2); 
% a=1; b=2; alpha =1; beta = 2;  n = 20;
  
p = @(x) (2*x)/(1+(x^2));
q = @(x) (-2/(1+(x^2)));
r = @(x) (1);
a = 0; b = 4; alpha = 1.25; beta = -0.95; n=20;      % h = (bb-aa)/(n+1);   h=0.2

h = (b-a)/n;
u1 = alpha;
u2 = 0;
v1 = 0;
v2 = 1;
u = zeros(2,n);
v = zeros(2,n);


for i = 1 : n 
    x = a+(i-1)*h;
    t = x+0.5*h;
    k11 = h*u2;
    k12 = h*(p(x)*u2+q(x)*u1+r(x));
    k21 = h*(u2+0.5*k12);
    k22 = h*(p(t)*(u2+0.5*k12)+q(t)*(u1+0.5*k11)+r(t));
    k31 = h*(u2+0.5*k22);
    k32 = h*(p(t)*(u2+0.5*k22)+q(t)*(u1+0.5*k21)+r(t));
    t = x+h;
    k41 = h*(u2+k32);
    k42 = h*(p(t)*(u2+k32)+q(t)*(u1+k31)+r(t));
    u1 = u1+(k11+2*(k21+k31)+k41)/6;
    u2 = u2+(k12+2*(k22+k32)+k42)/6;
    k11 = h*v2;
    k12 = h*(p(x)*v2+q(x)*v1);
    t = x+0.5*h;
    k21 = h*(v2+0.5*k12);
    k22 = h*(p(t)*(v2+0.5*k12)+q(t)*(v1+0.5*k11));
    k31 = h*(v2+0.5*k22);
    k32 = h*(p(t)*(v2+0.5*k22)+q(t)*(v1+0.5*k21));
    t = x+h;
    k41 = h*(v2+k32);
    k42 = h*(p(t)*(v2+k32)+q(t)*(v1+k31));
    v1 = v1+(k11+2*(k21+k31)+k41)/6;
    v2 = v2+(k12+2*(k22+k32)+k42)/6;
    u(1,i) = u1;
    u(2,i) = u2;
    v(1,i) = v1;
    v(2,i) = v2;
end
 
w1 = alpha;
z = (beta-u(1,n))/v(1,n);
x = a;
i = 0;

fprintf('   x          w\n');
fprintf('%5.4f   %11.8f \n', x, w1);
for i = 1 : n 
    x = a+i*h;
    w1 = u(1,i)+z*v(1,i);
    % w2 = u(2,i)+z*v(2,i);
    fprintf('%5.4f   %11.8f \n', x, w1);
end





