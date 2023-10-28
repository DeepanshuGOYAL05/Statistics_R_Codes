# R program to illustrate
# Mann Whitney U Test

# Creating a small dataset
# Creating a vector of red bulb and orange prices
red_bulb <- c(38.9, 61.2, 73.3, 21.8, 63.4, 64.6, 48.4, 48.8)
orange_bulb <- c(47.8, 60, 63.4, 76, 89.4, 67.3, 61.3, 62.4)

# Passing them in the columns
BULB_PRICE = c(red_bulb, orange_bulb)
BULB_TYPE = rep(c("red", "orange"), each = 8)

# Now creating a dataframe 
DATASET <- data.frame(BULB_TYPE, BULB_PRICE, stringsAsFactors = TRUE)

# printing the dataframe
DATASET

# installing libraries to view summaries and
# boxplot of both orange and red color bulbs
install.packages("dplyr")
install.packages("ggpubr")

# Summary of the data

# loading the package
library(dplyr)
group_by(DATASET,BULB_TYPE) %>%
summarise(
	count = n(),
	median = median(BULB_PRICE, na.rm = TRUE),
	IQR = IQR(BULB_PRICE, na.rm = TRUE))

# loading package for boxplot
library("ggpubr")
ggboxplot(DATASET, x = "BULB_TYPE", y = "BULB_PRICE", 
		color = "BULB_TYPE", palette = c("#FFA500", "#FF0000"),
		ylab = "BULB_PRICES", xlab = "BULB_TYPES")

res <- wilcox.test(BULB_PRICE~ BULB_TYPE, 
				data = DATASET,
				exact = FALSE)
res

#Code by deepanshu
