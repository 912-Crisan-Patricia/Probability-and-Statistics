pkg load statistics
% lab 2 continuation
%c
p1= binopdf(0,3,0.5)

p2= 1- binopdf(1,3,0.5)

%d P(X<=2) =F(2)

p3= binocdf(2,3,0.5)

%d P(X<2) would be same as P(X<=1)

p4= binocdf(1,3,0.5)

%e P(X>=1)= 1-P(X<1) = 1-P(X<0) =1-P(X=0)


p5= 1- binopdf(0,3,0.5)

%e P(X>1) = 1- P(X<=1)

p6= 1- binocdf(1,3,0.5)


