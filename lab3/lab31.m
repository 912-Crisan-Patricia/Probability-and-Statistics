% lab3

%P(X<=0)
% always alpha and beta are 0< <1 for quantile with the help of the "inverse" of the cdf ==> REMEMBER INV

alpha = input("Give the order of alpha ")

beta = input("Get the order for beta ")

% parameters - min and standard deviation

n= input("Input n ")

sigma =input("Give sigma ")

% normal ==> normcdf , student ==> scdf

p1= normcdf(0,n,sigma)




%& P(X>=0) = 1- P(X<0) = 1-P(X<=0)

p2= 1- normcdf(0,n,sigma)

% b P(-1<=X<=1) = F(b) - F(a)

p3 = normcdf(1,n,sigma ) - normcdf(-1,n,sigma)

% bb P((X<=1) U (X>=1) = 1- probability of before ==> 1-(P(-1<=X<=1))

p4= 1-(normcdf(1,n,sigma ) - normcdf(-1,n,sigma))


% compute quantile for alpha

x_alpha = norminv(alpha,n,sigma)

% quantile for student woulf be tinv for example , but it has only one argument

%quantile for bete
x_beta = norminv(1-beta,n,sigma)










