pkg load statistics
#test3
#a
N=[3.26 1.89 2.42 2.03 3.07 2.95 1.39 3.06 2.46 3.35 1.56 1.79 1.76 3.82 2.42 2.96];
#a confidence interval 1-alpha
one_minus_alpha = input("Please enter the confidence level: ");
alpha = 1 - one_minus_alpha;
n = length(N);
m1=mean(N)-(std(N)/sqrt(n))*tinv(1-alpha/2,n-1);
m2=mean(N)-(std(N)/sqrt(n))*tinv(alpha/2,n-1);
printf("the confidence interval is (%4.3f,%4.3f) \n",m1,m2);
#b significance level alpha
alpha=input("alpha= ");
[h,pval,ci,stats]=ttest(N,3,"alpha",alpha,"tail","left");
printf("The value of h is %f\n", h);

if h == 1
  printf("The null hypothesis is rejected, the mean is smaller than 3\n");
  printf("The data suggests that the standard is not met\n");

else
  printf("The null hypothesis is not rejected,the variances don t differ\n");
  printf("The data suggests that the standard is met\n");
endif

q1=tinv(alpha,stats.df)
printf("The rejection region is (-inf,%4.3f)\n", q1);
printf("The observed value of the test statistic is %4.3f\n", stats.tstat);

printf("The pval of the test is %4.3f\n", pval);
printf("\n")

