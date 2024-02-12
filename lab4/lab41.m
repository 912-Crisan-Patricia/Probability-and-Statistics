%exercise 2 a lab 4
N=input("Give n")

p=input("Give number of simulations between 0 and 1 ")

U= rand(1,N)

X=(U>p)

%bernoulli always states the distributions as 0/1

U_X=[0:1]

%hist gives the barchart of distribution
n_X=hist(X,length(U_X))

%relative frequency
rel_freq= n_X/N


