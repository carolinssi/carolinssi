clear all;
clc;

%% TAYLOR
% contoh soal di ppt 
syms y t
% mencari deret taylor sampai orde 4
f = 2*t*(y^2);
df(1) = f;
for i = 1:3
    df(i+1) = diff(df(i),t) + (diff(df(i),y)*f);
end
% sesuai df yang didapat di atas maka :
y1 =@(t,y) 2*t*y^2; % df(1)
y2 =@(t,y) 8*t^2*y^3 + 2*y^2; % df(2)
y3 =@(t,y) 16*t*y^3 + 2*t*y^2*(24*t^2*y^2 + 4*y); % df(3)
y4 =@(t,y) 96*t^2*y^4 + 2*y^2*(24*t^2*y^2 + 4*y) + 16*y^3 + 2*t*y^2*(48*t*y^2 + 4*t*y*(24*t^2*y^2 + 4*y) + 2*t*y^2*(48*y*t^2 + 4));  % df(4)
% inisialisasi 
a = 0;
b = 0.4;
ya = 1;
% T4=taylor(y1,y2,y3,y4,a,b,ya,0.1) 
% T4=taylor(y1,y2,y3,y4,a,b,ya,0.05)
h = 0.05;
m=(b-a)/h;
t=zeros(1,m+1);
Y=zeros(1,m+1);
t=a:h:b;
Y(1)=ya;
for j=1:m
     Y(j+1)=Y(j)+(y1(t(j),Y(j))*h)+(y2(t(j),Y(j))*(h^2/2))+(y3(t(j),Y(j))*(h^3/6))+(y4(t(j),Y(j))*(h^4/24));
end
T4 = [t',Y'];
