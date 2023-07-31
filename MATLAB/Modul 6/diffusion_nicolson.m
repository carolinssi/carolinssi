function [U] = diffusion_nicolson(c, f, alpha, beta, Nx, Nt, L, T)
%% 
% Metode Crank-Nicolson untuk persamaan panas . 
% u_t(x,t) = c*u_xx(x,t) pada R = (0<=x<=L and 0<=t<=T)
% dengan u(x,0) = f(x) , untuk (0<=x<=L) 
% dan u(0,t) = alpha , u(a,t) = beta, untuk (0<=t<=b)

% Input         - f = u(x,0)sebagai sebuah  string 'f'
%                 - alpha = u(0,t) dan beta = u(a,t)
%                 - L dan T titik paling kanan pada interval [0,L] dan [0,T]
%                 - c sebagai konstanta persamaan panas
%                 - Nx dan Nt jumlah sub selang yg dibentuk pada interval  [0,L] and [0,T]
% Output      - U sebagai matrix solusi;

 %%
    % Initialize parameters and u 
    h = L/(Nx-1);
    k = T/(Nt-1);
    r = c^2*k/h^2;
    s1 = 1+2/r;
    s2 = -r;
    U = zeros(Nx,Nt);

    % Boundary conditions 
    U(1,1:Nt) = alpha;
    U(Nx,1:Nt) = beta;
    % Generate first row
    U(2:Nx-1,1) = feval(f,h:h:(Nx-2)*h)';
    % Form the diagonal and off_diagonal elements of A and 
    % the constant vector B and solve tridiagonal system AX = B 
    Vd(1,1:Nx) = s1*ones(1,Nx);
    Vd(1) = 1;
    Vd(Nx) = 1;
    Va = -ones(1,Nx-1);
    Va(Nx-1) = 0;
    Vc = -ones(1,Nx-1);
    Vc(1) = 0;
    Vb(1) = alpha;
    Vb(Nx) = beta;
    
    % Membentuk matriks A
    A = zeros(Nx,Nt);
    for i = 1:Nt-1
        for j = 1:Nx-1
            if i == j
                A(i,j) = Vd(i);
            elseif i == j+1
                A(i,j) = Va(i);
            elseif j == i+1
                A(i,j) = Vc(i);
            end 
        end
    end   
    A(Nx,Nt-1) = 1;
    A(Nx,Nt) = -1;
    disp(A)
    for j = 2:Nt
        for i = 2:Nx-1
            Vb(i) = U(i-1,j-1) + U(i+1,j-1) + s2*U(i,j-1);
        end
        % menyelesaikan SPL AX = Bn
        X = linsolve(A,Vb');  % matrix solusi SPL
        U(1:Nx,j) = X';
    end
    U = U';

end

