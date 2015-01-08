%%共轭梯度法
function [K,X]=CG(A,b,x,M,e)
if nargin<5
   e=1e-10;    %默认误差界
end
if nargin<4
    M=5000;    %默认迭代次数
end
r=b-A*x;
q=r'*r;
k=0;
while (sqrt(q)>e*sqrt(b'*b)&&k<M)
    k=k+1;
    if k==1
        p=r;
    else
        b=q/q1;
        p=r+b*p;
    end
    w=A*p;
    a=q/(p'*w);
    x=x+a*p;
    r=r-a*w;
    q1=q;
    q=r'*r;
end
K=k;
X=x;     




