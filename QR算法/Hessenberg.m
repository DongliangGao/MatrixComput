%%…œhessenbergªØ
function [A,Q]=Hessenberg(A)
[~,n]=size(A);
Q=eye(n);
for k=1:n-2
     h=househ(A(k+1:n,k));
     H=blkdiag(eye(k),h);
     A=H*A*H;     
     Q=Q*H;
end
end