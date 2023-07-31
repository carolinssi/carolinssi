function x=trimat(A,D,C,B)
% fungsi untuk mencari matriks tridiagonal 
%Input- A is the sub diagonal of the co-efficient matrix
% - D is the main diagonal of the co-efficient matrix
% - C is the super diagonal of the co-efficient matrix
% - B is the constant vector of the linear system
%Output- x is the solution vector
    N=length(B);
    for k=2:N
         mult=A(k-1)/D(k-1);
         D(k)=D(k)-mult*C(k-1);
         B(k)=B(k)-mult*B(k-1);
    end
    x(N)=B(N)/D(N);
    for k=N-1:-1:1
         x(k)=(B(k)-C(k)*x(k+1))/D(k);
    end
end
