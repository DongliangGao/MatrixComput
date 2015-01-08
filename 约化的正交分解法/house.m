function [H,v,b]=house(x)
n=length(x);
m=max(abs(x));
x=x/m;
c=x(2:n)'*x(2:n);
v(1)=1;
v(2:n)=x(2:n);
if c==0
    b=0;
else
    a=sqrt(x(1)^2+c);
    if x(1)<=0
        v(1)=x(1)-a;
    else
        v(1)=-c/(x(1)+a);
    end
    b=2*v(1)^2/(c+v(1)^2);
    v=v/v(1);
end
H=eye(n)-b*v*v';
end
        
