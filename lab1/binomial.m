pkg load statistics

% we ask the user to input the required value for the binomial
% n is a natural number
% p is a probability bet 0 and 1
n = input("Input the number of n trials n= ");

p = input("Input the probability of succes p= ");

% x is the number of successes , x provides values for pdf
x = 1:1:n;

px = binopdf(x,n,p);
% plot the graph
plot(x,px,'r+')
%if you wish to have multiple graphs in the same window, write the command
hold on
%to give the values for the cdf, you must always "simulate" continuity that is
xx= 0:0.01:n;
fx = binocdf(x,n,p);
plot(x,fx,'b')
%use hold on & legend to put them together


