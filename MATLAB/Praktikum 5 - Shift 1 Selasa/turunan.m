function [tvals, yvals]=euler(f,tspan, startval,step)
    steps=(tspan(2)-tspan(1))/step+1;
    y=startval;t=tspan(1);
    yvals=startval;tvals=tspan(1);
    for i=2:steps
        y1=y+step*feval(f,t,y); t1=t+step;
        %collect values together for output
        tvals=[tvals, t1]; yvals=[yvals, y1];
        t=t1;y=y1;
    end
end 