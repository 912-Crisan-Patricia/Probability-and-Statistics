pkg load statistics

#4
#a significance level alpha
A=[1021 980 1017 988 1005 998 1014 985 995 1004 1030 1015 995 1023];
B=[1070 970 993 1013 1006 1002 1014 997 1002 1010 975];
alpha=input("alpha= ");
[h,pval,ci,stats]=vartest2(A,B,"alpha",alpha, 'tail','both');
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
#b significance level
[h,pval,ci,stats]=ttest2(A,B,"alpha",alpha,'tail','right');
if h == 1
  printf("The null hypothesis is rejected, is more reliable\n");
  printf("The data suggests that the standard is not met\n");

else
  printf("The null hypothesis is not rejected,is not more reliable\n");
  printf("The data suggests that the standard is met\n");
endif

q3=tinv(1-alfa,stats.df);
printf("The rejection region is (%4.3f, inf)\n", q3);
printf("The observed value of the test statistic is %4.3f\n", stats.tstat);

printf("The pval of the test is %4.3f\n", pval);
printf("\n")






