function [tvals,yvals, hasil]=euler(f,tspan, startval,step)
%% KAMUS
% f = fungsi y' = f(t,y)
% tspan = [a,b] dengan a batas bawah, b batas atas
% startval = y(t_0) = y_0
% step = h
% fungsi feval sudah didefinisikan di dalam matlab
   
    steps=((tspan(2)-tspan(1))/step) + 1; % iterasi = ((b-a)/h) + 1
    y=startval; % y = y_0
    t=tspan(1); % t = a (batas bawah)
    yvals=startval;
    tvals=tspan(1);
    for i=2:steps
        y1=y+step*feval(f,t,y)  % y_1 = y_0 +h*f(t_0,y_0) ---> yang menjadi hampiran euler
        t1=t+step                  % t_(k+1) = t_k + h
        %collect values together for output
        tvals=[tvals, t1];
        yvals=[yvals, y1];
        t=t1;
        y=y1;
    end
    tvals= [tvals]';
    yvals=[yvals]';
    hasil = [tvals, yvals]
end 