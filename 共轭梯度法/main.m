%%数值实验
clc
clear all
x=zeros(400,1);
C=[];D=[];
for i=1:400
    D(i)=0;
    for j=1:400
         C(i,j)=1/(i+j-1);
         D(i)=D(i)+C(i,j);
    end
end
D=D';
tic
[K,X]=CCG(C,D,x)
toc
tic
[K,X]=CG(C,D,x)
toc