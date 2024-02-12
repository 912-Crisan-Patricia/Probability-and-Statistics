pkg load statistics
%exercise 2 b lab 4

N=input("Give number of simulations>")

p=input("Give number of simulations between 0 and 1>")

n=input("Give n trials>")


U=rand(n,N);

X=sum(U<p)
%k=nr of succeses
k=0:n;
p_k=binopdf(k,n,p);
U_X= unique(X);

n_X=hist(X,length(U_X));
rel_freq= n_X/N
clf
plot(U_X,rel_freq,'*',k,p_k,'ro')


