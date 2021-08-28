#e_quakes = read.csv('path/e_quakes.csv',header=TRUE, sep=",")

e_quakes<-datasets::quakes

####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)

######Columns
e_quakes[,c(1,2)]

df<-e_quakes[,-6]

e_quakes$depth

summary(e_quakes$depth)

summary(e_quakes)



###########Summary of the data#########

summary(e_quakes)


#####################
plot(e_quakes$depth)
plot(e_quakes$mag,e_quakes$depth,type="p")
plot(e_quakes)
# points and lines 
plot(e_quakes$depth, type= "l") # p: points, l: lines,b: both

plot(e_quakes$depth, xlab = 'mag Concentration', 
     ylab = 'No of Instances', main = 'mag levels in NY city',
     col = 'blue')

# Horizontal bar plot
barplot(e_quakes$mag, main = 'mag Concenteration in air',
        ylab = 'mag levels', col= 'blue',horiz = T,axes=F)

#Histogram
hist(e_quakes$mag)
hist(e_quakes$depth, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(e_quakes$mag,main="Boxplot")
boxplot.stats(e_quakes$mag)$out



# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')


#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(e_quakes$mag)
plot(e_quakes$mag, e_quakes$Wind)
plot(e_quakes$mag, type= "l")
plot(e_quakes$mag, type= "l")
plot(e_quakes$mag, type= "l")
barplot(e_quakes$mag, main = 'mag Concenteration in air',
        xlab = 'mag levels', col='green',horiz = TRUE)
hist(e_quakes$depth)
boxplot(e_quakes$depth)
boxplot(e_quakes[,0:4], main='Multiple Box plots')

sd(airquality$Ozone,na.rm = T)
sd(e_quakes$depth)#,na.rm = T)
var(e_quakes$depth)

skewness(e_quakes$depth)
kurtosis(e_quakes$depth)










