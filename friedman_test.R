alpha = 0.05
data1 = [0.873, 2.817, 0.121, -0.945, -0.055, -1.436, 0.360, -1.478, -1.637, -1.869]
data2 = [1.142, -0.432, -0.938, -0.729, -0.846, -0.157, 0.500, 1.183, -1.075, -0.169]
data3 = [-0.208, 0.696, 0.928, -1.148, -0.213, 0.229, 0.137, 0.269, -0.870, -1.204]

Test_statistic, p_value = friedmanchisquare(data1, data2, data3)
print(f"Test_statistic_Friedman = {Test_statistic},   p_value = {p_value}", "\n")

if p_value < alpha:
	print(f'Since p_value < {alpha}, reject null hypothesis. Therefore, data distributions are probably not equal.')
else:
	print(f'Since p_value > {alpha}, the null hypothesis cannot be rejected. Therefore, data distributions are probably equal.')
     
#Code by deepanshu
