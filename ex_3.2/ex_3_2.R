source("DBDA2E-utilities.R")             # read defn. of openGraph, saveGraph
openGraph( width=3 , height=4 )          # open a graphics window
plot( x=1:4 , y=c(1,3,2,4) , type="o" )  # make a plot in the screen window
saveGraph( file="temp" , type="png" )    # save the graph as "temp.pdf"
