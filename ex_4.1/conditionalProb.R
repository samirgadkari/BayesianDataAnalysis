show( HairEyeColor )  # Show data
EyeHairFreq = apply( HairEyeColor,     # data.frame.
                     c("Eye", "Hair"), # Margins - This is what remains after summing
                                       # over the other variables.
                     sum)              # Apply the sum function
EyeHairProp = EyeHairFreq / sum( EyeHairFreq )  # Joint proportions
show( round( EyeHairProp, 2 ) )

HairFreq = apply( HairEyeColor, c("Hair"), sum )  # Sum across eyes also
HairProp = HairFreq / sum( HairFreq )             # Joint proportions across eyes
show( round( HairProp, 2 ) )

EyeFreq = apply( HairEyeColor, c("Eye"), sum )   # Sum across hair also
EyeProp = EyeFreq / sum( EyeFreq )               # Joint proportions across hair
show( round( EyeProp, 2 ) )

EyeHairProp["Blue", ] / EyeProp["Blue"] # Conditional probability. Of the blue-eyed
                                        # people in original table, what proportion
                                        # have different hair colors.

EyeHairProp["Brown", ] / EyeProp["Brown"] # Conditional probability. Of the brown-eyed
                                          # people in original table, what proportion
                                          # have different hair colors.
