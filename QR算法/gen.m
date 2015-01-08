%%多项式求根，y为多项式的系数向量即，y=[1,a(n-1),…a(0)]
function r=gen(y)
n=length(y)-1;
A=zeros(n);
for i=1:n-1
    A(i+1,i)=1;
end
for i=1:n
    A(i,n)=-y(n+2-i);
end
r=eigenvalue(A);
end