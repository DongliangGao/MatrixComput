function H=househ(x)
n=length(x);
I=diag(ones(1,n));
sn=sign(x(1));
if sn==0
    sn=1;
end
z=x(2:n);
if norm(z,inf)==0
    H=I;
    return;
end
a=sn*norm(x,2);
u=x;
u(1)=u(1)+a;
rho=a*(a+x(1));
H=I-1.0/rho*u*u';
end