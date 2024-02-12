% lab 3 exercise 2 poisson

n= input("Give n that must be >=30 ")

p=input("Give p such that is <=0.05 ")

lambda = p* n

k= 0:n
% lecture about poisson law
y = binopdf(k,n,p)

z = poisspdf(k,lambda)

plot(k,y)
hold on
plot(z,k)
