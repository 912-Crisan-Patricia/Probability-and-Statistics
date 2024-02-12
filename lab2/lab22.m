pkg load statistics
% under 0.5 --> heads, otherwise tails

N = input('Give the number of simulations ')
% 3 lines and N columns
U= rand(3,N)
% checks every value in matrix
Y= (U<0.5)
%sums the comulmns
X= sum(Y)

%clf
hist(X)


