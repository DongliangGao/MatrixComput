function y=qiandai(l,b)
%½âÏÂÈı½Ç¾ØÕóLy=b
n=length(b);
y=zeros(n,1);
y(1)=b(1)/l(1,1);
for k=2:n
    y(k)=(b(k)-l(k,1:k-1)*y(1:k-1))/l(k,k);
end