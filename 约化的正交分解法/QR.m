%%QR·Ö½â
function X=QR(A,d)
[m,n]=size(A);
k=1;
while k<=n
    H=hous(A(k:m,k));
    A(k:m,k:n)=H*A(k:m,k:n);
    d(k:m)=H*d(k:m);
    k=k+1;
end
R=[];
R=A(1:n,1:n);
x(n)=d(n)/R(n,n);
for k=n-1:-1:1
   x(k)=(d(k)-R(k,k+1:n)*x(k+1:n)')/R(k,k);
end
X=x';
end
