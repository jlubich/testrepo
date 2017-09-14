library(help="stats")

##############################################
## 1 - Basic Math
##############################################

### a. Log of positive number
log(16)

### b. Default for log is a natural log. log(16, 2) = 4
log(27, 3)

### c. Log of negative number is Nan because its impossible to have a number to a power be a negative number
log(-1)

### d. square root of 16 is 4
sqrt(16)

##############################################
## 2 - Random Number Generation
##############################################

### a. Vector of 15 normal random variables and its mean and SD
my.numbers <- rnorm(15)

mean(my.numbers)

sd(my.numbers)

### b. Vector of 15 normal random variables with mean of 10 and SD of 2... and its mean and SD
my.numbers <- rnorm(15, mean = 10, sd = 2)

mean(my.numbers)

sd(my.numbers)

### c. The means and SDs don't match because they're using a small set of random numbers. If the sample size increased then they would be closer

##############################################
## 3 - Vector Operations
##############################################

### a. Weights
weights.kg <- c(60, 72, 57, 90, 95, 72)

### b. heights
heights.m <- c(1.80, 1.85, 1.72, 1.90, 1.74, 1.91)

### c. enter into R
weights.kg
heights.m

### d. scatterplot - Shows there's not much of any correlation between height and weight for this sample. 
plot(weights.kg, heights.m)

### e. BMIs
BMI <- weights.kg / sqrt(heights.m)

BMI

### f. Mean of weights
weights.kg.mean <- mean(weights.kg)

### g. Weights - Mean of Weights
weights.diff_from_mean <- weights.kg - weights.kg.mean

weights.diff_from_mean

### h. Sum the diffs from mean
sum(weights.diff_from_mean)


##############################################
## 4 - Data Science Profile
##############################################

categories <- c(
    "Computer \nProgramming",
    "Math",
    "Statistics",
    "Machine \nLearning",
    "Domain \nExpertise",
    "Communication\n& Presentation\nSkills",
    "Data \nVisualization"
)

ranking <- c(
    4,
    3,
    2,
    3,
    1,
    3,
    5
)

jeremy <- data.frame(categories, ranking)

jeremy

barplot(
    jeremy$ranking,
    las = 2,
    names.arg=jeremy$categories,
    cex.names = .7
    )

##############################################
## 5 - Swirl
##############################################

### 1. install
install.packages("swirl")

### 2. load
library(swirl)

### 3. install course
install_from_swirl("R Programming")

### 4. complete swirl lessons
## Completed - see .txt file for console results. First module got truncated off 
## as my console didn't store all of the session. I assume you can accept the remaining 
## console output in good faith that I completed all 7 modules.

