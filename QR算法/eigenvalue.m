%%计算拟上三角矩阵A的特征值
function r=eigenvalue(A)
[~,n]=size(A);
A=HQR(A);
r=zeros(1,n);  
i=1;
while i<n-1
    a=A(i,i);b=A(i,i+1);
    c=A(i+1,i);d=A(i+1,i+1);
    if A(i+1,i)<1e-5
        r(i)=A(i,i);
        i=i+1;
    else
        r(i)=((a+d)-sqrt((a-d)^2+4*b*c))/2;
        r(i+1)=((a+d)+sqrt((a-d)^2+4*b*c))/2;
        i=i+2;
    end
end
if A(n-1,n-2)<1e-5
    if A(n,n-1)<1e-5
        r(n)=A(n,n);
        r(n-1)=A(n-1,n-1);
    else
      r(n-1)=((a+d)-sqrt((a-d)^2+4*b*c))/2;
      r(n)=((a+d)+sqrt((a-d)^2+4*b*c))/2;  
    end
else
    r(n)=A(n,n);
end
end         