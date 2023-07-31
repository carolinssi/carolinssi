function x = tridiagmatrix(A,b) 
      n = size(A,1);
      c = [A b]
      for j = 1:n-1
          s = A(j+1,j) / A(j,j);
          A(j+1,j+1) = A(j+1,j+1) -s * A(j,j+1);
          b(j+1) = b(j+1) - s*b(j);
          c = [A b]
      end
      x = zeros(n,1);
      x(n) = b(n) /A(n,n);
      for j = n-1 : -1: 1
          x(j) = (b(j) - A(j,j+1)*x(j+1)) / A(j,j);
          x
      end
end
