%% ’¡≤–‘≈–∂®
function [m,l]=Panduan(H)
[~,n]=size(H);
for i=2:n
    a=abs(H(i,i-1));
    b=abs(H(i,i));
    c=abs(H(i-1,i-1));
    d=0.5*1e-18;
    if a<=(b+c)*d
       H(i,i-1)=0;
    end
end
y=zeros(1,n-1);
for i=1:n-1
    y(i)=H(i+1,i);
end
m=n;
for i=n-1:-1:2
    if y(i)~=0&&y(i-1)~=0
        m=n-i-1;
        break;
    end
end
l=0;
for k=n-2-m:-1:1
    if y(k)==0
        l=k;
        break;
    end
end
end    