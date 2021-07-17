#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality<- datasets::quakes
####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns
airquality[,c(1,2)]

df<-airquality[,-1]

summary(airquality[,1])

airquality$depth

summary(airquality$depth)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 

#####################
plot(airquality$depth)
plot(airquality$depth,airquality$mag,type="p")
plot(airquality)
# points and lines 
plot(airquality$depth, type= "l") # p: points, l: lines,b: both
plot(airquality$depth, xlab = 'Index', 
     ylab = "Depth", main = 'Depth of e_quakes',
     col = 'blue')

# Horizontal bar plot
barplot(airquality$mag, main = 'depth Concenteration in air',
        ylab = 'depth levels', col= 'blue',horiz =F,axes=T)
#Histogram
hist(airquality$mag)
hist(airquality$depth, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$depth,main="Boxplot")

boxplot.stats(airquality$Wind)$out
# Multiple box plots
boxplot(airquality,main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot "o" - box around the plot,"n"- No box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="n")
plot(airquality$depth)
plot(airquality$depth, airquality$Wind)
plot(airquality$depth, type= "l")
plot(airquality$depth, type= "l")
plot(airquality$depth, type= "l")
barplot(airquality$depth, main = 'depth Concenteration in air',
        xlab = 'depth levels', col='green',horiz = TRUE)
hist(airquality$mag)
boxplot(airquality$mag)
boxplot(airquality[,0:4], main='Multiple Box plots')


##Home work
e_quakes<-datasets::quakes
sd(airquality$depth,na.rm = T)
var(airquality$depth,na.rm = T)
skewness(airquality,na.rm = T)
kurtosis(airquality$depth,na.rm = T)


Depth, Magnitude

#var
#Install moments package
#skewness
#kurtosis
skewness(airquality$depth,na.rm=T)









