# Calculator ----------------------------------------------------

2 + 5

4 * 8

2^3

sqrt(4)

exp(1)

log(exp(1))

# Help search with "?"
?log		

# Native pipe operator
1 |> exp() |> log() 



# Data structures -----------------------------------------------

# Assignment operators
x = 8
x
x <- 7
x

x + 5
2 * x


# Vectors
y <- c(1, 2, 3, 4, 5)
y

z <- c(6:10)
z

y + z
y * z

z[2]			      # second element of z
z[-2]		      	# all elements of z except the second
z[1:3]	      	# first, second, and third elements of z
z <- c(z, 11)  	# append value "11" to z

log(y)
sum(y)
which(z > 7)

y |> log() |> sum()


# Matrices
matrix(data = 0, nrow = 4, ncol = 5)
matrix(0, 4, 5)

a <- matrix(1, 2, 2)
b <- matrix(1:4, 2, 2)

a + b
a * b			# elementwise multiplication
a %*% b		# traditional matrix multiplication

b[1, 2]		# element in first row second column
b[1, ]		# first row
b[, 1]		# first column


# Data frames
v1 <- c("versicolor", "versicolor", "chrysoscelis")
v2 <- c(3.8, 3.2, 2.6)
v3 <- c(0.3, 0.25, 0.2)

dat <- data.frame(species = v1, svl = v2, mass = v3)
dat
dat[, 1]
dat$species
dat[, c(1, 3)]
dat[1,]
dat[c(1, 3), ]



# Data import/export ---------------------------------------------

?read.csv

#data <- read.csv(file = "filename.whatever", ...) 
#wine <- read.csv(file = "C:\\Users\\tcook14\\Documents\\BrainCancer.csv")
#wine <- read.csv(file = "C:/Users/tcook14/Documents/BrainCancer.csv")
# full file path not needed if file is in working directory
#wine <- read.csv(file = "BrainCancer.csv")

bc <- read.csv(file = "https://raw.githubusercontent.com/tylerlewiscook/UCO-Applied-Regression/main/Data/BrainCancer.csv")
str(bc)

save(b, file = "favoriteMatrix.RData")
rm(b)
load(file = "favoriteMatrix.RData")
write.csv(b, file = "favoriteData.csv")



# Packages -------------------------------------------------------

install.packages("alr4")
library(alr4)
