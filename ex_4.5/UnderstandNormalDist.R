# Part A:
# determine (approximately) the probability mass under 
# the normal curve from x = μ−σ to x = μ+σ.

source("DBDA2E-utilities.R")
# Graph of normal probability density function, with comb of intervals.
meanval = 0.0               # Specify mean of distribution.
sdval = 0.2                 # Specify standard deviation of distribution.
xlow  = meanval - sdval # Specify low end of x-axis.
xhigh = meanval + sdval # Specify high end of x-axis.
dx = sdval/10               # Specify interval width on x-axis
# Specify comb of points along the x axis:
x = seq( from = xlow , to = xhigh , by = dx )
# Compute y values, i.e., probability density at each value of x:
y = ( 1/(sdval*sqrt(2*pi)) ) * exp( -.5 * ((x-meanval)/sdval)^2 )
# Plot the function. "plot" draws the intervals. "lines" draws the bell curve.
openGraph(width=7,height=5)
plot( x , y , type="h" , lwd=1 , cex.axis=1.5
      , xlab="x" , ylab="p(x)" , cex.lab=1.5 ,
      , main="Normal Probability Density" , cex.main=1.5 )
lines( x , y , lwd=3 ,  col="skyblue" )
# Approximate the integral as the sum of width * height for each interval.
area = sum( dx * y )
# Display info in the graph.
text( meanval , .75*max(y) ,
      bquote(
        paste( "Area = ", sum(,x,) , " " , Delta , "x p(x) = " , .(signif(area,3)) )
      ) , adj=c(0.5,.5) , cex=1.5 )
# Save the plot to an EPS file.
saveGraph( file = "IntegralOfDensity" , type="eps" )

# Part B:
# Suppose you believe that women’s heights follow a bell-shaped distribution, 
# centered at 162 cm with about two-thirds of all women having heights between 
# 147 and 177 cm. What should be the μ and σ parameter values?
# μ = 162cm
# Since integral of PDF from μ-σ to μ+σ = 0.68, σ = 0.2 (same as sdval declared above)