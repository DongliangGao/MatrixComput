%%Lanzcosµü´ú
function T=Lanczos(A)
[m,n]=size(A);
Q=zeros(n,3*n);U=zeros(n,3*n);R=zeros(n,3*n);T=[];
a=[];b=[];
Q(1,1)=1;
U(:,1)=A*Q(:,1);
j=1;
[a(j),R(:,j),b(j)]=diedai(Q(:,j),U(:,j));
T(j,j)=a(j);
while b(j)>1e-10&&j<3*n+1
    T(j,j+1)=b(j);
    T(j+1,j)=T(j,j+1);
    Q(:,j+1)=R(:,j)/b(j);
    U(:,j+1)=A*Q(:,j+1)-b(j)*Q(:,j);
    j=j+1;
    [a(j),R(:,j),b(j)]=diedai(Q(:,j),U(:,j));
    T(j,j)=a(j);
end
end