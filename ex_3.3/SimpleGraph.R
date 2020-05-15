createSubDir = function(subDir, dir=".") {
  # Create the subdir in the given dir.
  # Warnings show up when the directory exists,
  # so suppress them.
  suppressWarnings( 
    dir.create( file.path( subDir, dir ) ) 
  )
}

x = seq( from = -3 , to = 3 , by = 0.1 )   # Specify vector of x values.
y = x^3                                    # Specify corresponding y values.
plot( x , y , col="skyblue" , type="l" )   # Plot the x,y points as a blue line.

createSubDir( file.path("."), file.path(".", "data") )  # Create data subdir

saveGraph( file="data/cubic", type="pdf")       # Save graph as a PDF file