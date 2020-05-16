"
Determine the exact probability of drawing a 10 from a shuffled pinochle deck. 
(In a pinochle deck, there are 48 cards. There are six values: 9,
10, Jack, Queen, King, Ace. There are two copies of each value in each of the standard
four suits: hearts, diamonds, clubs, spades.)
(A) What is the probability of getting a 10?
(B) What is the probability of getting a 10 or Jack?
"
# Create the deck using repeat. We repeat 8 times since there are
# 2 values of each card per suite, and there are 4 suites.
pinochle = rep( c( "9", "10", "J", "Q", "K", "A" ), each=8 )
prob_10 = length(pinochle[ pinochle == "10" ]) / length(pinochle)

prob_10_J = length(pinochle[ pinochle == "10" | pinochle == "J"]) / length(pinochle)
