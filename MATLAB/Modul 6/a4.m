clear all;
clc;
format long
f = @(x) sin(pi*x) + sin(3*pi*x);
c1 = 0;
c2 = 0;
a = 1;
b = 0.1;
c = 1;
h = 0.1;
k = 0.01;
[U,Va,Vd,Vc,Vb] = crank_nicholson(f,c1,c2,a,b,c,h,k);

% f = @(x) sin(pi*x) + sin(3*pi*x);
% alpha = 0;
% beta = 0;
% L = 1;
% T = 0.1;
% c = 1;
% Nx = 11;
% Nt = 11;
% 
% [U1] = diffusion_nicolson(c, f, alpha, beta, Nx, Nt, L, T);
% f = @(x) sin(pi*x) + sin(3*pi*x);
% c1 = 0;
% c2 = 0;
% a = 1;
% b = 0.1;
% c = 1;
% n = 11;
% m = 11;
% [U] = crank_nicholson(f,c1,c2,a,b,c,n,m)




% % Matlab Program 7: Heat Diffusion in one dimensional wire within the
% % Crank-Nicholson Method
% clear;
% 
% % Parameters to define the heat equation and the range in space and time
% L = 1.; % Lenth of the wire
% T =1.; % Final time
% 
% % Parameters needed to solve the equation within the Crank-Nicholson method
% maxk = 9; % Number of time steps
% dt = T/maxk;
% n = 10; % Number of space steps
% dx = L/n;
% cond = 1/2; % Conductivity
% b = cond*dt/(dx*dx); % Parameter of the method
% 
% % Initial temperature of the wire: a sinus.
% for i = 1:n+1
%     x(i) =(i-1)*dx;
%     u(i,1) =sin(pi*x(i));
% end
% % Temperature at the boundary (T=0)
% for k=1:maxk+1
%     u(1,k) = 0.;
%     u(n+1,k) = 0.;
%     time(k) = (k-1)*dt;
% end
% 
% % Defining the Matrices M_right and M_left in the method
% aal(1:n-2)=-b;
% bbl(1:n-1)=2.+2.*b;
% ccl(1:n-2)=-b;
% MMl=diag(bbl,0)+diag(aal,-1)+diag(ccl,1);
% 
% aar(1:n-2)=b;
% bbr(1:n-1)=2.-2.*b;
% ccr(1:n-2)=b;
% MMr=diag(bbr,0)+diag(aar,-1)+diag(ccr,1);
% 
% % Implementation of the Crank-Nicholson method
% for k=2:maxk % Time Loop
%     uu=u(2:n,k-1);
%     u(2:n,k)=inv(MMl)*MMr*uu;
% end

% % Graphical representation of the temperature at different selected times
% figure(1)
% plot(x,u(:,1),'-',x,u(:,100),'-',x,u(:,300),'-',x,u(:,600),'-')
% title('Temperature within the Crank-Nicholson method')
% xlabel('X')
% ylabel('T')
% 
% figure(2)
% mesh(x,time,u')
% 
% title('Temperature within the Crank-Nicholson method')
% xlabel('X')
% ylabel('Temperature')