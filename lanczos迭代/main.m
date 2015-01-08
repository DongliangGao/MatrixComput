%%ÊµÑéº¯Êý
clc
close all;
B=zeros(42,1);
B(1)=1;B(39)=1;B(42)=1;
n=length(B)-1;
A=zeros(n);
for i=1:n-1
    A(i+1,i)=1;
end
for i=1:n
    A(i,n)=-B(n+2-i);
end
A=A*A';  
R=sprand(100,100,0.05);
R=full(R);
R=R'*R;
tic
d=eig(A)
toc
tic
T=Lanczos(A)
d=eig(T)
toc
tic
d=eig(R)
toc
tic
T=Lanczos(R);
D=eig(R)
toc