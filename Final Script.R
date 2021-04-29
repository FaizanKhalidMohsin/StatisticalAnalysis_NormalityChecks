

require(readxl)


## Part 1 

data1 = read_excel("Data Part 1 for Faizan.xlsx")


## Check if TST and SO-TST columns are normally distributed (use shapiro-wilk test). 


shapiro.test(data1[[2]])

shapiro.test(data1[[4]])


## Make a t-test between them.


t.test(data1[,2], data1[,4])


## Check if SE and SO-SE coloumns are normally distributed (use visual method like density plot or qq plot)  

qqnorm(data1[[3]], pch = 1, frame = FALSE)
qqline(data1[[3]], col = "steelblue", lwd = 2)

qqnorm(data1[[5]], pch = 1, frame = FALSE)
qqline(data1[[5]], col = "steelblue", lwd = 2)


## Make a t test between them.

t.test(data1[,3], data1[,5])

#########################################################################################################################

## Part2  

data2 = read_excel("Data Part 2 for Faizan.xlsx", sheet = 2)
data2so = read_excel("Data Part 2 for Faizan.xlsx", sheet = 3)

## How many RWA episodes are they having in their REM bouts (an RWA bout is counted when the value is greater or equal to 50), I just want the raw number value of how many there are per subject in each of the treatments 

data2_count = data2[,2:6] > 50
count = rowSums(data2_count)

data2so_count = data2so[,2:6] > 50
countso = rowSums(data2so_count)

final_data = data.frame(Name = data2[[1]], RWA = count, RWA_SO = countso )

final_data












