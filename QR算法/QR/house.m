function [v,b]=house(x)
%house±ä»»
n=length(x);
m=max(abs(x));
x=x/m; 
q=x(2:n)'*x(2:n); 
v(1)=1; 
v(2:n)=x(2:n); 
if q==0   
    b=0; 
else
    a=(x(1)^2+q)^(1/2);   
    if x(1)<=0        
        v(1)=x(1)-a;  
    else
        v(1)=-q/(x(1)+a);   
    end
    b=2*v(1)^2/(q+v(1)^2);  
    v=v/v(1); 
end
v=v';
end
