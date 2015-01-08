clc
clear all;
A=[4 -2 4 2;-2 10 -2 -7;4 -2 8 4;2 -7 4 7];
b=[8 2 16 6]';
C=[1 2;3 4;5 6];
d=[1 1 1]';
E=rand(200,100);
f=rand(200,1);
tic
X=PSL(A,b)
toc
tic
X=PSL(C,d)
toc
tic
X=PSL(E,f)
toc