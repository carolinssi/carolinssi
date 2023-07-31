clc;
clear;
A=[3,-1,0 ; -1,2,-1 ; 0,-1,3]; %Write your matrix here.
u= [1;1;1]; % The initial choice of eigenvector.
n=length(u); % Size of initial eigenvector.
% eps=input('\n Enter the tolerance of error '); %error of tolerance you want. for exmple 0.001 or 0.0001 etc.
eps = 10^-6;
m1=1;
v=A*u; 
m2=max(abs(v));
err=abs(m1-m2);
 while err>eps  %Calculating the greatest eigenvalue and the corresponding eigenvector.
   v=A*u
   m2=max(abs(v))  % sebagai konstanta c1 dst
   u=v/m2
   err=abs(m1-m2);
   m1=m2
 end
fprintf('\n The greatest eigenvalue is %5.5f\n',m1);
disp('The corresponding eigenvector is:');
disp("\tu")
disp(u)
disp("\tv")
disp(v)
%fprintf('\n %5.5f',u);