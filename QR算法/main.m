%%数值实验
clc
clear all;
A=[3 2 3 4 5 6 7;11 1 2 3 4 5 6;2 8 9 1 2 3 4;-4 2 9 11 13 15 8;-1 -2 -3 -1 -1 -1 -1;3 2 3 4 13 15 8;-2 -2 -3 -4 -5 -3 -3];
C=[1 1 -5 3];
B=zeros(42,1);
B(1)=1;B(39)=1;B(42)=1;
D=[1 101 208.01 10891.01 9802.08 79108.9 -99902 790 -1000];
%%求矩阵A的特征值
tic
r=eigenvalue(A)
toc
tic
d=eig(A)
toc
%%求一元高次多项式的根
tic
r=gen(C)
toc
tic
n=length(C)-1;
A=zeros(n);
for i=1:n-1
    A(i+1,i)=1;
end
for i=1:n
    A(i,n)=-C(n+2-i);
end
D=eig(A)
toc
tic
r=gen(B)
toc
tic
n=length(B)-1;
A=zeros(n);
for i=1:n-1
    A(i+1,i)=1;
end
for i=1:n
    A(i,n)=-B(n+2-i);
end
D=eig(A)
toc
tic
n=length(D)-1;
A=zeros(n);
for i=1:n-1
    A(i+1,i)=1;
end
for i=1:n
    A(i,n)=-D(n+2-i);
end
