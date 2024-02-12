%a study is conducted to compare heat loss in glass pipes, versus steel pipes
%of the same size. Various liquids at identical starting temperatures are run through
%segments of each type and the heat loss is meausred . The data results:

%a. at a 5% significance level, do the population variances seem to differ?

%b. At the significance level, does it seem that on average, steel pipes heat more then glass pipes

#ztest-verifica mean (vector) cu o valoare , se stie sigma
#ttest-nu se stie sigma, in rest la fel ca ztest
#ttest2-compara mean (v1)cu mean(v2)
#vartest-........... cu o val data
#vartest2-variances la 2 vectori
#left tail test -- folosesti cand vrei sa vezi daca e <
#right tailss
#both !=
#a significance level

S=[4.6 0.7 4.2 1.9 4.8 6.1 4.7 5.5 5.4];
G=[2.5 1.3 2.0 1.8 2.7 3.2 3.0 3.5 3.4];


% alfa in this case 0.05
alfa= input("Please input alfa= ")


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
#b significance level
[h,pval,ci,stats]=ttest2(S,G,"alpha",alfa, 'tail','right');
if h == 1
  printf("The null hypothesis is rejected, the steel pipes lose more than glass pipes\n");
  printf("The data suggests that the standard is not met\n");

else
  printf("The null hypothesis is not rejected,the steel pipes lose less\n");
  printf("The data suggests that the standard is met\n");
endif

q3=tinv(1-alfa,stats.df);
printf("The rejection region is (%4.3f, inf)\n", q3);
printf("The observed value of the test statistic is %4.3f\n", stats.tstat);

printf("The pval of the test is %4.3f\n", pval);
printf("\n")






