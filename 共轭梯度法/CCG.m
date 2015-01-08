%%最速下降法
function [K,X]=CCG(A,b,x,M,e)
if nargin<5
   e=1e-10;    %默认误差界
end
if nargin<4
    M=5000;    %默认迭代次数
end
r=b-A*x;
k=0;
while abs(r)>e
    k=k+1;
    a=r'*r/(r'*A*r);
    x=x+a*r;
    r=b-A*x;    
end
K=k;
X=x;  