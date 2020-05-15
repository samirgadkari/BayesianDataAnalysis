# Convert temperature from Fahrenheit to Celsius
tempConvFtoC = function(f = 78) {
  (f - 32) * 5 / 9
}

tempConvFtoC()
tempConvFtoC(98.6)

# If a sequence is passed in where a single value is expected,
# the function is applied to each element of the sequence,
# and a sequence with the result is returned.
tempConvFtoC( c(32, 72, 98.6, 212) )
