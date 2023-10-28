N = 10
alpha = 0.05
data1 = np.random.normal(0, 1, N)
data2 = np.random.normal(0, 1, N)

Test_statistic, p_value = kruskal(data1, data2)
print(f"Test_statistic_Wilcoxon = {Test_statistic},   p_value = {p_value}", "\n")

if p_value < alpha:
	print(f'Since p_value < {alpha}, reject null hypothesis. Therefore, Two data distributions are probably not equal.')
else:
	print(f'Since p_value > {alpha}, the null hypothesis cannot be rejected. Therefore, Two data distributions are probably equal')


#Code by deepanshu
