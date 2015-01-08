%%householder±ä»»
function H=hous(x)
n=length(x);
I=diag(ones(1,n));
c=x(2:n)'*x(2:n);
if norm(x(2:n),inf)==0
    H=I;
    return;
end
a=sqrt(x(1)^2+c);
v=x;
if x(1)<=0
    v(1)=v(1)-a;
else
    v(1)=-c/(x(1)+a);
end
b=2*v(1)^2/(a^2-x(1)^2+v(1)^2);
v=v/v(1);
H=I-b*v*v';