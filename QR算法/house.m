%%householder±ä»»
function h=house(x)
n=length(x);
m=max(abs(x));
x=x/m; 
q=x(2:n)'*x(2:n); 
v(1)=1; 
v(2:n)=x(2:n); 
if q<1e-5   
    b=0; 
else
    a=sqrt(x(1)^2+q);   
    if x(1)<=0        
        v(1)=x(1)-a;  
    else
        v(1)=-q/(x(1)+a);   
    end
    b=2*v(1)^2/(q+v(1)^2);  
    v=v/v(1); 
end
v=v';
h=eye(n)-b*v*v';
end