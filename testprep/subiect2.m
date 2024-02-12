#test2
#a significance level
S=[46 37 39 48 47 44 35 31 44 37];
N=[35 33 31 35 34 30 27 32 31 31];
alfa=input("alfa= ");
[h,pval,ci,stats]=vartest2(S,G,"alpha",alfa, 'tail','both');
printf("The value of h is %f\n", h);

if h == 1
  printf("The null hypothesis is rejected, the variances differ\n");
  printf("The data suggests that the standard is not met\n");

else
  printf("The null hypothesis is not rejected,the variances don t differ\n");
  printf("The data suggests that the standard is met\n");
endif

q1=finv(alfa/2,stats.df1,stats.df2)
q2=finv(1-alfa/2,stats.df1,stats.df2)
printf("The rejection region is (-inf,%4.3f)U(%4.3f, inf)\n", q1,q2);
printf("The observed value of the test statistic is %4.3f\n", stats.fstat);

printf("The pval of the test is %4.3f\n", pval);
printf("\n")
#b confidence interval
#1-alfa=95%
one_minus_alpha = input("Please enter the confidence level: ");
alpha = 1 - one_minus_alpha;
n = length(N);
m1=mean(S)-mean(N)-norminv(1-alpha/2,0,1)*sqrt(var(S)/n+var(N)/n);
m2=mean(S)-mean(N)+norminv(1-alpha/2,0,1)*sqrt(var(S)/n+var(N)/n);
printf("the confidence interval is (%4.3f,%4.3f) \n",m1,m2);
