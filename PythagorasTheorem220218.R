print('file: R_Phytagoras220216.R')
print(date())
# purpose: 
# created by: Dieter.Wolf-Gladrow@awi.de 
#    2/2022 version 1.0
# This software is provided 'as is' without warranty of
# any kind. But it's mine, so you can't sell it.
# 
# ---------------------------------------------------------
  print('Pythagoras Theorem (2/2022)')
  A = 3; B = 4; C = 5
  phi = asin(B/C)
  (phiDeg = phi/pi*180)
  phi1 = acos(A/C)
  (phi1Deg = phi1/pi*180)
  xt = c(0,A*cos(phi),C,0)
  yt = c(0,A*sin(phi),0,0)
  xC = c(0,C,C,0,0); yC = c(0,0,-C,-C,0)
  xA = c(0,A*cos(pi/2+phi),A*cos(pi/2+phi)+A*cos(phi),A*cos(phi),0)
  yA = c(0,A*sin(pi/2+phi),A*sin(pi/2+phi)+A*sin(phi),A*sin(phi),0)
  xB = c(C,C+B*sin(pi/2-phi),C+B*sin(pi/2-phi)-B*cos(pi/2-phi),
         C+B*sin(pi/2-phi)-B*cos(pi/2-phi)-B*cos(phi),C)
  yB = c(0,B*cos(pi/2-phi),B*cos(pi/2-phi)+B*sin(pi/2-phi),
         B*cos(pi/2-phi)+B*sin(pi/2-phi)-B*sin(phi),0)
  (xAL1 = sqrt((A*sin(phi-pi/2))^2+(A*cos(phi-pi/2))^2))
  library(latex2exp)
  # png('Pythagoras220217.png',width=16,height=12,units='cm',res=300)
  plot(xt,yt,type='l',lwd=3,col='blue',las=1,cex=0.4,
       col.axis='white',xaxt='n',yaxt='n',xlab='',ylab='',bty='n',
       xlim=c(-C/2,C+C/2+1),ylim= c(-C,C+1),asp=1) # NOTE: asp = 1
  # if asp is a finite positive value then the window is set up so that one data unit in 
  # the x direction is equal in length to asp * one data unit in the y direction.
  #
  # The special case asp == 1 produces plots where distances between points are represented 
  # accurately on screen. Values with asp > 1 can be used to produce more accurate maps when
  # using latitude and longitude.
  lines(xA,yA,col='black',lwd=1)
  lines(xB,yB,col='black',lwd=1)
  lines(xC,yC,col='black',lwd=1)
  polygon(xA,yA,col='yellow')
  polygon(xB,yB,col='yellow')
  polygon(xC,yC,col='green')
  cexv = 1 # cex value for text
  text(0.9,1,'a',col='black',pos=4,cex=cexv)
  text(2.4,1,'b',col='black',pos=4,cex=cexv)
  text(2.0,0.3,'c',col='black',pos=4,cex=cexv)
  text(-1,1.6*A,TeX('$a^2 + b^2 = c^2$'),col='black',pos=4,cex=cexv)
  text(0,0.8*A,TeX('$a^2$'),col='black',pos=1,cex=cexv)
  text(C,0.8*A,TeX('$b^2$'),col='black',pos=1,cex=cexv)
  text(C/2,-C/2,TeX('$c^2$'),col='black',pos=1,cex=cexv)
  # dev.off()
  