%%隐式双重步位移QR迭代
function H=HQR(A)
[~,n]=size(A);
[H,Q]=Hessenberg(A);
[m,l]=Panduan(H);
%收敛性判定
while m<n
   [H(l+1:n-m,l+1:n-m),P]=Francis(H(l+1:n-m,l+1:n-m));
   Q=Q*blkdiag(eye(l),P,eye(m));
   H(1:l,l+1:n-m)=H(1:l,l+1:n-m)*P;
   H(l+1:n-m,n-m+1:n)=P'*H(l+1:n-m,n-m+1:n);
   [m,l]=Panduan(H);
end
for i=1:n-1
        a=H(i,i);
        b=H(i,i+1);
        c=H(i+1,i);
        d=H(i+1,i+1); 
        if abs(c)>1e-15&&(a-d)^2+4*b*c>0  
            H(i,i)=((a+d)-sqrt((a-d)^2+4*b*c))/2;
            H(i+1,i+1)=((a+d)+sqrt((a-d)^2+4*b*c))/2;
            H(i+1,i)=0;
        end
end
end