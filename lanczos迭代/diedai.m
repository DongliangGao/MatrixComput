%%求啊a，b，r的迭代函数
function [a,r,b]=diedai(q,u)
a=q'*u;
r=u-a*q;
b=norm(r);
end