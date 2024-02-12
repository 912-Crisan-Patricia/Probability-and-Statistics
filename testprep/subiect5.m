pkg load statistics

%A manufacturer of gunpowder has developed a new powder which was tested in 12 shells.
%The resulting muzzle velocities in m/s are (they are assumed to be approximately normally
%distributed):

G=[1001.7 975.0 978.3 988.3 988.9 1000.3 979.2 968.9 983.5 999.2 985.6]

%a the 5% significance level, does the data suggesr that, on average, the muzzela are faster than 995 m/s?
%find a 99% confidence interval for standard deviation of the velocity of shells this type

%hypothesized population mean this case 995
mu_0= input("Input hypothesized population mean >")
%alpha this case 0.05
alpha=input("Input alpha >")


%ztest
[h, pval, ci, stats] = ttest(G, mu_0, 'Alpha', alpha, 'tail', 'right');



% Display results using fprintf
fprintf('P-value: %.4f\n', pval);
fprintf('Critical Value: %.4f\n', ci(2));


if h == 1
    printf('Reject the null hypothesis\n');
else
    printf('Fail to reject the null hypothesis\n');
end

%find a 99% confidence interval for standard deviation of the velocity of shells this type
%confidence interval  - this case 0.99
conf= input("Input confidence interval ")

alpha=1- conf

% Confidence interval for the variance of G
n1=length(G)
var_G_lower = ((n1 - 1) * var(G)) / chi2inv(1 - alpha / 2, n1 - 1);
var_G_upper = ((n1 - 1) * var(G)) / chi2inv(alpha / 2, n1 - 1);

% Confidence interval for the standard deviation of G
sd_G_lower = sqrt(var_G_lower);
sd_G_upper = sqrt(var_G_upper);

fprintf('Confidence Interval for the Standard Deviation of G: (%.4f, %.4f)\n', sd_G_lower, sd_G_upper);


n = length(G);

% Confidence interval for the standard deviation of G
m1 = std(G) - (std(G) / sqrt(n)) * tinv(1 - alpha / 2, n - 1);
m2 = std(G) - (std(G) / sqrt(n)) * tinv(alpha / 2, n - 1);

fprintf("The confidence interval for the standard deviation of G is (%4.3f, %4.3f)\n", m1, m2);

