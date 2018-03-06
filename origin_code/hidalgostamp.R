 #install.packages("BSDA")
 setwd("/Volumes/win/CS/ds/AAMA/computing")

 library(BSDA)
 str(Stamp)
 attach(Stamp)
 xlim <- c(min(thickness), max(thickness))
 
 par(mfrow=c(2,2))
 h = 0.015;
 binselect1 = seq(xlim[1],xlim[2]+h,h)
 hist(thickness,binselect1, xlab="h = 0.015", xlim=xlim,col="lightblue")

 h = 0.010;
 binselect1 = seq(xlim[1],xlim[2]+h,h)
 hist(thickness,binselect1, xlab="h = 0.010", xlim=xlim,col="lightblue")

 h = 0.005;
 binselect1 = seq(xlim[1],xlim[2]+h,h)
 hist(thickness,binselect1, xlab="h = 0.005", xlim=xlim,col="lightblue")
 
 h = 0.002;
 binselect1 = seq(xlim[1],xlim[2]+h,h)
 hist(thickness,binselect1, xlab="h = 0.002", xlim=xlim,col="lightblue")
 dev.copy(pdf,'hidalgo_stamp.pdf')
 dev.off()

 
 par(mfrow=c(2,2))
 h = 0.012;
 loc = 0
 binselect1 = seq(xlim[1]-loc,xlim[2]+h,h)
 hist(thickness,binselect1, xlim=xlim,col="lightblue")
 loc = 0.002
 binselect1 = seq(xlim[1]-loc,xlim[2]+h,h)
 hist(thickness,binselect1, xlim=xlim,col="lightblue")
 loc = 0.004
 binselect1 = seq(xlim[1]-loc,xlim[2]+h,h)
 hist(thickness,binselect1, xlim=xlim,col="lightblue")
 loc = 0.006
 binselect1 = seq(xlim[1]-loc,xlim[2]+h,h)
 hist(thickness,binselect1, xlim=xlim,col="lightblue")
 dev.copy(pdf,'hidalgo_stamp_loc.pdf')
 dev.off()
 
 par(mfrow=c(2,2)) 
 plot.density(density(thickness,bw = 0.01),main = 'KDE')
 plot.density(density(thickness,bw = 0.005),main = 'KDE')
 plot.density(density(thickness,bw = 0.0025),main = 'KDE')
 plot.density(density(thickness,bw = 0.001),main = 'KDE')
 dev.copy(pdf,'hidalgo_stamp_kde.pdf')
 dev.off()
  
 
 par(mfrow=c(1,1)) 
 plot.density(density(thickness),main = 'KDE')
 dev.copy(pdf,'hidalgo_stamp_kde_rule_of_thumb.pdf')
 dev.off()
 
 
 
 