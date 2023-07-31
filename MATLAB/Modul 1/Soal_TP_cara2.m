n=10

%insisiasi matriks awal
m = zeros (n,n);
m(1,1) = 1;
%inisisasi baris dan kolom awal : 
for i=1:n
  for j=1:n
    if i == 1 
      if j> 1 & j < 4
        m(i,j)=m(i,j-1)+1;
      end
    elseif j == 1
      if i>1 & i <4
        m(i,j)=m(i-1,j)+1;
      end
    end
  end
end
    
%program baris selanjutnya

for i=2:n
  for j=2:n+2
    if j < n+1
      if m(i-1,j-1) ~= 0 
        m(i,j) = m(i-1,j-1);
      end
    end
  end
end

      
fprintf("Matriks Pak Ahmad : \n")
disp(m)

