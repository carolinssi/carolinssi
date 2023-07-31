function ys_new = RK4_system_step(fs, x0, h, ys)
% Tulis jawaban anda dibawah garis.
% --------------------------------.
    N = length(f) + 1 % jumlah banyaknya fungsi 
    Y = zeros(N,2); %Initialize the X and Y vector
    t = linspace(x0,N,100); % Vektor berisi t sebagai waktu
    Y(1,:) = y0; %Vektor awal 
    for i = 2:N
        y = Y(i,:)';
        k1 = fs(t(i),y)
        k2 = fs(t(i) +0.5*h, y +0.5*h*k1);
        k3 = fs(t(i) +0.5*h, y +0.5*h*k2);
        k4 = fs(t(i) +h    , y +h*k3);
        Y(i+1,:) = y + (h/6)*(k1+ 2.*k2 + 2*k3 + k4); % nilai hampiran 
end
    