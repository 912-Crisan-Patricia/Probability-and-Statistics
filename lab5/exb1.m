pkg load statistics

%alpha - risk probability - significance level
%in practice - alpha =0.05,0.01,0.001

X=[7,7, 4, 5, 9, 9,4 ,12 ,8, 1, 8, 7,3, 13, 2, 1, 17, 7,12, 5, 6, 2, 1, 13,14, 10, 2, 4, 9, 11,3, 5, 12, 6, 10, 7]

confidence=input("Give the confidence level>")

alpha= 1-confidence

sigma= 5

printf("Solving first subpoint\n")

n=length(X);

m1=mean(X)-(sigma/sqrt(n))*norminv(1-alpha/2,0,1);

m2=mean(X)-(sigma/sqrt(n))*norminv(alpha/2,0,1);
%quantiles =_inv

printf("Confidence interval for mean when sigma is known is (m1,m2)=(%4.3f,%4.3f)\n",m1,m2)

printf("Solving second subpoint\n")

m1b=mean(X)-(std(X)/sqrt(n))*tinv(1-alpha/2,n-1);
m2b=mean(X)-(std(X)/sqrt(n))*tinv(alpha/2,n-1);

printf("Confidence interval for mean when sigma is unknown is (m1,m2)=(%4.3f,%4.3f)\n",m1b,m2b)

%chi2inv

%simple s- std(x)
% s^2- var(x)

printf("Solving third subpoint\n")

v1=(n-1)*var(X)/chi2inv(1-alpha/2,n-1);
v2=(n-1)*var(X)/chi2inv(alpha/2,n-1);

printf("Confidence interval for mean of the variance is (v1,v2)=(%4.3f,%4.3f)\n",v1,v2)

s1=sqrt(v1)
s2=sqrt(v2)

printf("Confidence interval for standard deviation is (s1,s2)=(%4.3f,%4.3f)\n",s1,s2)





