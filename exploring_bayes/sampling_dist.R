"
Consider a normal probability density function that has mean of 10.0 and 
standard deviation of 0.20.

A. What is the exact probability density at x=9.9? Hint: dnorm(x,m,sd)

B. Generate a random sample of 100,000 values from the normal distribution. 
Hint: rnorm(N,m,sd)

C. Compute the approximate probability density at x=9.9 by counting the 
proportion of sampled points that falls between x=9.8 and x=10.0, 
and then dividing by the width of the bin. 
Show your code and explain what it does. 
Is the result approximately the same as Part A? (It should be.) 
Hint: Name the sample of values heapOdata; try
sum( heapOdata >= 9.8 & heapOdata < 10.0 ).
"
dist_mean = 10.0
dist_sd = 0.2

# Plot the pdf with the given mean and sd.
# dnorm gives us the pdf.
x = seq( from=9, to=11, along.with=prob)
plot( x, dnorm(x, m=dist_mean, sd=dist_sd), type="l" )

# Getting the pdf at a particular value using dnorm:
dnorm( 9.9, m=dist_mean, sd=dist_sd )

# Generate random deviates for the normal distribution
# with the given mean and sd.
dist_samples = rnorm( n=100000, m=dist_mean, sd=dist_sd )

# Plot the generated random values along x
x = seq( from=0, to=20, along.with=dist_samples)
plot( x, dist_samples )

# Sample the distribution with the probabilities prob at the given values x.
# Sample with replacement - each sample is independent of any other samplings.
samples_in_range = dist_samples[dist_samples >= 9.8 & dist_samples < 10.0]
approx_pdf_value = length( samples_in_range ) / 
  length( dist_samples ) / (10.0 - 9.8)
approx_pdf_value
