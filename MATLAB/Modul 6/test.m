clc
clear all
close all
close all hidden





%% EULER
% % contoh euler di ppt 
% [t,y,hasil] = euler('feuler',[0 3],1,0.125);
% [t2,y2,hasil2] = euler('feuler2',[0 0.4],1,0.1);
% [t3,y3,hasil3] = euler('feuler2',[0 0.4],1,0.05);
% plot(t,y)
% grid on
% xlabel('Waktu (detik)')
% ylabel('Nilai Y')
% hold on
% plot(t,3*exp(-t/2)+t-2,'o'); % grafik solusi eksak y(t) = 3*exp(-t/2)+t-2
% hold off;

%% HEUN
% [t,y,hasil] = heun('feuler',[0 3],1,1);
% [t,y,hasil] = heun('feuler',[0 3],1,0.5);
% [t,y,hasil] = heun('feuler',[0 3],1,0.25);
% 
% %% TAYLOR
% % contoh soal di ppt 
% syms y t
% % mencari deret taylor sampai orde 4
% f = (t-y)/2;
% df(1) = f;
% for i = 1:3
%     df(i+1) = diff(df(i),t) + (diff(df(i),y)*f);
% end
% y1 =@(t,y) (t-y)/2;
% y2 =@(t,y) (2-t+y)/4;
% y3 =@(t,y) (-2+t-y)/8;
% y4 =@(t,y) (2-t+y)/16;
% % inisialisasi 
% a = 0;
% b = 3;
% ya = 1;
% T4=taylor(y1,y2,y3,y4,a,b,ya,1) 
% T4=taylor(y1,y2,y3,y4,a,b,ya,0.5)
% T4=taylor(y1,y2,y3,y4,a,b,ya,0.25)
% T4=taylor(y1,y2,y3,y4,a,b,ya,0.125)

%% RUNGE-KUTTA
% [t,y] = runge_kutta('feuler',[0 3],1,1,1);
% [t,y] = runge_kutta('feuler',[0 3],1,0.5,1);
% [t,y] = runge_kutta('feuler',[0 3],1,0.25,1);
% [t,y] = runge_kutta('feuler',[0 3],1,0.125,1);
% % plot(t,y)
% grid on
% xlabel("Waktu (detik)")
% ylabel(" Nilai Y")

% syms t
% h = 0.1; %Time Step
% a = 0; %Starting t
% b = 2; %Ending t
% n = 20; %Number of Iterations
% y = -0.25; %Initial Condition
% yvals = -0.25;
% y11=sin(4*t);
% y21=4*cos(4*t);
% y31= -16*sin(4*t);
% y41=-64*cos(4*t);
% step = ((b-a)/h) + 1
% for i = 2:step
%     y1 = y + y11*h + ((y21/factorial(2))*h.^2) +((y31/factorial(3))*h.^3)+(y41/factorial(4)*h.^4);
%     yvals=[yvals, y1];
%     y=y1;
% end
% yvals=[yvals]'

% MASALAH NILAI BATAS - BEDA HINGGA
p = @(x) (-2*x);
q = @(x) (x^2);
r = @(x) (sin(x)); 
a = 1; b =7; alpha = 5; beta = 3; h=6/7;      % h = (b-a)/(n+1);   h=0.2
[X] = MNB_lin(p,q,r,a,b,alpha,beta,h)

% x=1.2:.2:2.8;
% h=.2;n=length(x);
% b=-(2+h*h*(1-x/5));
% c=ones(1,n);a=c;
% r=h*h*x;
% r(1)=r(1)-2;r(n)=r(n)+1;
% beta=c;gam=c;y=c;
% beta(1)=b(1);gam(1)=r(1)/beta(1);
% for i=2:n
%     beta(i)=b(i)-a(i)*c(i-1)/beta(i-1);
%     gam(i)=(r(i)-a(i)*gam(i-1))/beta(i);
% end
% y(n)=gam(n);
% for j=1:n-1
%     y(n-j)=gam(n-j)-c(n-j)*y(n-j+1)/beta(n-j);
% end
% disp('y =');disp(y')


