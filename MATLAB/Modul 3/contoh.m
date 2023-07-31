clear
clc

% %% Newton
% x = [1,2,3,5,6];
% y = [7,4,5.5,40,82];
% newton_interpolation(x,y,5)
% 
% %% Lagrange
% x = [1, 6, 4];
% y = [0, 1.791759469, 1.386294361];
% lagrange_interpolation(x,y,2)

% %% Lagrange Coef
% x = [-2, 0, 2];
% f = @(x) x^2 + x +2;
% for i = 1:length(x) 
%     y(i) = f(x(i));
% end
% c = lagrange_coef(x,y)
% t = 10;
% lagrange_eval(t,x,c)
% 
%% Newton Coef
x = [1, 2, 2.5];
f = @(x) x+(2/x);
for i = 1:length(x) 
    y(i) = f(x(i))
end
k= 2;
[p]=lagrange_coef(x,y,k)
% t = 10;
% newton_eval(t,x,a)
% lagrange_full(t,x,a)
% 
% X = [2;3;4];
% Y = [-1;16;51];
% p0 = 1.5;
% k = 2; % orde polinom newtom yang diinginkan k<length(x)
% [d,c,a,p] = newton_coef(X,Y,k,p0)
% % [p]=lagrange_coef(x,y,k)

% pp=lagrange_func(X,Y,k)

% 
% %%
% x = [1, 6, 4];
% y = [0, 1.791759469, 1.386294361];
% sum = 0;
% a = 2;
% for i = 1:length(x)
%     u = 1;
%     l = 1;
%     for j = 1:length(x)
%         if j ~= i
%             u = u * (a - x(j));
%             l = l * (x(i) - x(j));
%         end
%     end
%     sum= sum + u / l * y(i);
% end
% disp(sum);




