pkg load statistics
#ztest-verifica mean (vector) cu o valoare , se stie sigma
#ttest-nu se stie sigma, in rest la fel ca ztest
#ttest2-compara mean (v1)cu mean(v2)
#vartest-........... cu o val data
#vartest2-variances la 2 vectori
#left tail test -- folosesti cand vrei sa vezi daca e <
#right tail >
#both !=


S=[46 37 39 48 47 44 35 31 44 37]
N=[35 33 31 35 34 30 27 32 31 31]


%subpoint a => alpha taken as 0.05
alpha=input("alpha= ");
% using both when we compare between sets
[h,pval,ci,stats]=vartest2(S,N,"alpha",alpha, 'tail','both');
printf("The value of h is %f\n", h);

if h == 1
  printf("The null hypothesis is rejected, the variances differ\n");
  printf("The data suggests that the standard is not met\n");

else
  printf("The null hypothesis is not rejected,the variances don t differ\n");
  printf("The data suggests that the standard is met\n");
endif


%subpoint b => confidence taken as 0.95
one_minus_alpha = input("Please enter the confidence level: ");
alpha = 1 - one_minus_alpha;
n = length(N);
mean1=mean(S);
mean2=mean(N);
m1=mean(S)-mean(N)-norminv(1-alpha/2,0,1)*sqrt(var(S)/n+var(N)/n);
m2=mean(S)-mean(N)+norminv(1-alpha/2,0,1)*sqrt(var(S)/n+var(N)/n);
printf("the confidence interval is (%4.3f,%4.3f) \n",m1,m2);


