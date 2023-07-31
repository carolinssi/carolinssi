function root=find_root(coef)
len=length(coef); %number of coefficients of the given polynomial.
x=-1; % initial guess(This can be set to any value as the preference)
error=inf;
while(error>0.00001) %answer is correct up to 0.00001. 
    y = 0;
    ydif = 0;    
    for n = 0:len-1
        y = y+coef(len-n)*x^n; %calculating the polynomial value
        ydif = ydif+n*coef(len-n)*x^(n-1); %calculating the derivative value
    end
    error=y/ydif; %difference between previous approximation and new approximation in newtorn rapson method.
    x=x-y/ydif; %newly approximated value for the newtown rapson method
end
disp(x);