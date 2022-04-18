

## read in csv and tex files
resp1 = read.csv("C:\\Users\\BryanMcGuire\\OneDrive - ???ENCOMPASS CORPORATION UK LIMITED\\Documents\\Python_Projects\\Data_Sets\\sec__edgar_company_info.csv",header=T)

head(resp1)

str(resp1)


---------------------------------------------------------------------
  
  ##Lets work with in-built R data sets
data(iris)
??iris

str(iris) #structure of data frame

summary(iris)

summary(iris)

#read in first 10 rows

head(iris,10)

## subset/isolate the first 6 rows in different data frame

df6=iris[1:6,]
str(df6)

## isolate first 2 columns
df2=iris[,1:2]
head(df2)
str(df2)

##isolate all rows and 2 columns
x=iris[, c("Sepal.Length", "Sepal.Width")]
str(x)

## subset once column
## without drop the x2 will be a vector
x2= iris[, 'Sepal.Length', drop=FALSE]
head(x2)

## select variables Sepal.Length, Petal.Length, Species
vars <- c("Sepal.Length", "Petal.Length", "Species")
nd <- iris[vars]
head(nd)
str(nd)

# exclude column Species
vars <- names(iris) %in% c("Species") 
nd <- iris[!vars]
str(nd)
head(nd)

### exclude 3rd and 4th column
nd<- iris[c(-3,-4)]
head(nd)

##select a column value
## isolate all rows corresponding to species setosa

df_setosa=subset(iris,iris$Species=="setosa")
str(df_setosa)
summary(df_setosa)