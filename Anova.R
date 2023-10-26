# Import the necessary libraries
import scipy.stats as stats

# Sample data for three groups
group1 = [82, 75, 68, 74, 71]
group2 = [72, 69, 74, 75, 80]
group3 = [60, 65, 73, 68, 70]

# Perform one-way ANOVA test
f_statistic, p_value = stats.f_oneway(group1, group2, group3)

# Output the results
print("F-statistic:", f_statistic)
print("p-value:", p_value)

# Interpret the results
alpha = 0.05  # Significance level
if p_value < alpha:
    print("Reject the null hypothesis. There are significant differences between groups.")
else:
    print("Fail to reject the null hypothesis. There are no significant differences between groups.")

print("Code by deepanshu")
