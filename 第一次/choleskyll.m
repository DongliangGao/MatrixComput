%%cholesky�ֽ⣺A=LL'
function l=choleskyll(A)
tic
[m,n]=size(A);
l=eye(n,n);
l(1,1)=sqrt(A(1,1));
for i=2:n
    l(i,1)=A(i,1)/l(1,1);
end
for k=2:n
    s=0;
    for p=1:k-1
        s=s+l(k,p)*l(k,p);
    end
    l(k,k)=sqrt(A(k,k)-s);
    for i=k+1:n
        s=0;
        for p=1:k-1
            s=s+l(i,p)*l(k,p);
        end
        l(i,k)=(A(i,k)-s)/l(k,k);
    end
end
end