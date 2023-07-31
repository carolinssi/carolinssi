clear
clc
f = @(x) exp(x) -( 2*(x^2));  % f = g - h
g = @(x) exp(x);           % karena utk x lebih besar g>h
h = @(x) 2*(x.^2);

x = linspace(-5,5,100);
% hold on 
% axis([-5 5 0 10]); 
% plot(x,g(x),'-r')
% plot(x,h(x),'g-')
% hold off

a = zeros(1,1);
b = zeros (1,1);
indeks = 1;
i = -5;
while i < 6
    b(indeks) = f(i);
    a(indeks) = i;
    indeks = indeks + 1;
    i = i + 1;
end

%% Hasil TABULASI NILAI
C = [a;b]'

ff = @(x) x.^5 - 3*(x.^3) + x.^2 -1;
plot(x,ff(x),'g-')      
axis([-5 5 -10 10]); 
grid on 

    
    