%%��a��b��r�ĵ�������
function [a,r,b]=diedai(q,u)
a=q'*u;
r=u-a*q;
b=norm(r);
end