function H=householder1(x)
n=length(x);
I=diag(ones(1,n));
z=x(2:n);
if norm(z,inf)==0
    H=I;
    return;
end
a=norm(x,2);
u=x;
if x(1)<=0
    u(1)=u(1)-a;
else
    u(1)=(u(1)^2-a^2)/(u(1)+a);
end
b=2*u(1)^2/(a^2-x(1)^2+u(1)^2);
u=u/u(1);
H=I-b*u*u';