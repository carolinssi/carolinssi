function U = diff_BTCS(c, L, T, f, alpha, beta, Nx, Nt)
% Ketik jawaban anda dibawah garis.
% --------------------------------
%% 
% Metode Crank-Nicolson uNxuk persamaan panas . 
% u_t(x,t) = c*u_xx(x,t) pada R = (0<=x<=L and 0<=t<=T)
% dengan u(x,0) = f(x) , uNxuk (0<=x<=L) 
% dan u_x(0,t) = alpha , u(L,t) = beta, uNxuk (0<=t<=b)

% Input         - f = u(x,0)sebagai sebuah  string 'f'
%                 - alpha = u(0,t) dan beta = u(a,t)
%                 - L dan T titik paling kanan pada iNxerval [0,L] dan [0,T]
%                 - c sebagai konstaNxa persamaan panas
%                 - Nx dan Nx jumlah sub selang yg dibeNxuk pada iNxerval  [0,L] and [0,T]
% Output      - U sebagai matrix solusi;

 %%
    % Initialize parameters and u 
    h = L/(Nx-1);
    k = T/(Nx-1);
    r = c^2*k/h^2;
    s1 = 1+2*r;
    s2 = -r;
    U = zeros(Nx,Nx);

    % Konsisi batas
    U(1,1:Nx) = alpha;
    U(Nx,1:Nx) = beta;
    % Menghitung baris pertama 
    U(2:Nx-1,1) = feval(f,h:h:(Nx-2)*h)';
    % Form the diagonal and off_diagonal elemeNxs of A and 
    % the constaNx vector B and solve tridiagonal system AX = B 
    Vd(1,1:Nx) = s1*ones(1,Nx);
    Vd(1) = 1;
    Vd(Nx) = 1;
    Va = -ones(1,Nx-1);
    Va(Nx-1) = 0;
    Vc = -ones(1,Nx-1);
    Vc(1) = 0;
    Vb(1) = alpha;
    Vb(Nx) = beta;
    % MembeNxuk matriks A
    A = zeros(Nx,Nt);
    for i = 1:Nx-1
        for j = 1:Nt-1
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
    for j = 2:Nt
        for i = 2:Nx-1
            Vb(i) = U(i-1,j-1) + U(i+1,j-1) + s2*U(i,j-1);
        end
        % menyelesaikan SPL AX = Bn
        X = linsolve(A,Vb');  % matrix solusi SPL
        U(1:Nx,j) = X(i)';
    end
    U(Nx+1,1) = 0;
    U(1,Nt+1) = 0;
end