%%¶Ô³ÆÕı¶¨¾ØÕó²âÊÔ
clc
close all;
C=[4 -2 4 2;-2 10 -2 -7;4 -2 8 4;2 -7 4 7];
D=[8 2 16 6]';
tic
[l,u,P]=palu(C);
D=P*D;
y=qiandai(l,D);
x=huidai(u,y)
toc
tic
[l,u,P]=lu(C);
D=P*D;
y=qiandai(l,D);
x=huidai(u,y)
toc
tic
l=choleskyll(C);
y=qiandai(l,D);
x=huidai(l',y)
toc
tic
l=chol(C);
y=qiandai(l',D);
x=huidai(l,y)
toc
