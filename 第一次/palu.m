%%����Ԫ�ط�PA=LU
function [l,u,P]=palu(A)
[m,n]=size(A);
u=zeros(n);
l=eye(n);
P=eye(n);
for k=1:(n-1)
    %ѡ��Ԫ
    [q,p]=max(abs(A(k:n,k)));
    p=p+k-1;
    if p>k
        t=A(k,:);A(k,:)=A(p,:);A(p,:)=t;
        h=P(k,:);P(k,:)=P(p,:);P(p,:)=h;
    end
    %��Ԫ
    if A(k,k)~=0
        A(k+1:n,k)=A(k+1:n,k)/A(k,k);
        A(k+1:n,k+1:n)=A(k+1:n,k+1:n)-A(k+1:n,k)*A(k,k+1:n);
    else
        break;
        disp('��������');
    end
end
for i=1:n-1
    l(i+1:n,i)=A(i+1:n,i);u(i,i:n)=A(i,i:n);
end
u(n,n)=A(n,n);
end