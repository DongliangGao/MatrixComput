clear all
clc
%A=[2 3 4 5 6;0 4 5 6 7;0 3 6 7 8;0 0 2 8 9;0 0 0 0 10];
b=[5 3 4 1]';
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
r=EigValue(A)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
