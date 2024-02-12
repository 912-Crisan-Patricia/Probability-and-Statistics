
% lab one ex 1
A = [1 2 3; 4 5 6; 7 8 9];
A.^2;
B = [1 1 1; 2 2 2; 1 1 1];

A.* B;

C = A-B;

D= A*B;

% lab 1 ex 2

x = 0:1:3;
y1 = x.^4/10;
y2 = x.*sin(x);
y3 = cos(x);
plot(x, y1, 'b^:', x, y2, 'g*:', x, y3, 'r.:')



