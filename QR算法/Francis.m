%%双重步位移QR迭代
function [H,P]=Francis(H)
[~,n]=size(H);
m=n-1;
s=H(m,m)+H(n,n);
t=H(m,m)*H(n,n)-H(m,n)*H(n,m);
x=H(1,1)*H(1,1)+H(1,2)*H(2,1)-s*H(1,1)+t;
y=H(2,1)*(H(1,1)+H(2,2)-s);
z=H(2,1)*H(3,2);
k=0;
P=eye(n);
while k<n-2
    t=househ([x,y,z]');
    T=blkdiag(eye(k),t,eye(n-k-3));
    H=T*H*T;
    P=P*T;
    x=H(k+2,k+1);
    y=H(k+3,k+1);
    if k<n-3
        z=H(k+4,k+1);
    else
        z=0;
    end
    k=k+1;
end
g=househ([x,y]');
G=blkdiag(eye(n-2),g);
H=G*H*G;
P=P*G;
end