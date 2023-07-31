function y = gramSchmidt(x)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    A = x;
    [m n]=size(A);
    for j= 1:n
        R(j,j)=norm(A(:,j));
        A(:,j)=A(:,j)/R(j,j);
        R(j,j+1:n)=A(:,j)'*A(:,j+1:n);
        A(:,j+1:n)=A(:,j+1:n)-A(:,j)*R(j,j+1:n);
        y = A;
    end
end