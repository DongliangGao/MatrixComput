function x=huidai(u,y)
%½âÉÏÈı½Ç¾ØÕóUx=y
n=length(y);
x=zeros(n,1);
x(n)=y(n)/u(n,n);
for k=n-1:-1:1
    x(k)=(y(k)-u(k,k+1:n)*x(k+1:n))/u(k,k);
end