%%约化的正交化方法
function X=PSL(A,d)
[m,n]=size(A);
k=1;
while k<=n
    for j=k:n
    s=0;
    for i=k:m
        s=s+A(i,j)^2;
    end
    r(j)=s;
    end
    h=find(r(k:n)>=max(r(k:n)));
    if r(k+h-1)==0
       return;
    else
       for i=k:m
         t3=A(i,h+k-1);A(i,h+k-1)=A(i,k);A(i,k)=t3;
       end
       H=hous(A(k:m,k));
       A(k:m,k:n)=H*A(k:m,k:n);
       d(k:m)=H*d(k:m);
    end
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