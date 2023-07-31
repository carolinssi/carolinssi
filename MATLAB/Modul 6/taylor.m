function T4=taylor(y1,y2,y3,y4,a,b,ya,h)
% Input -- df=[y',y'',y''',y''''] entered as a string 'df'
%          where y' = f(x,y) 
%       -- a and b are the left and right end points   
%       -- ya is the initial condition y(a) 
%       -- h is the number of steps 
% Output-- T4=[X',Y'] where X is the vector of abscissas and 
%          Y is the vector of ordinates 
    m=(b-a)/h;
    t=zeros(1,m+1);
    Y=zeros(1,m+1);
    t=a:h:b;
    Y(1)=ya;
    for j=1:m
         Y(j+1)=Y(j)+(y1(t(j),Y(j))*h)+(y2(t(j),Y(j))*(h^2/2))+(y3(t(j),Y(j))*(h^3/6))+(y4(t(j),Y(j))*(h^4/24));
    end
    T4 = [t',Y'];
end