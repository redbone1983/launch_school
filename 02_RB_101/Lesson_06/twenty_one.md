# Rules of Twenty-One #

You start with a normal 52-card deck consisting of the 4 suits (hearts, diamonds, clubs, and spades), and 13 values (2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace).

The goal of Twenty-One is to try to get as close to 21 as possible, without going over. If you go over 21, it's a "bust" and you lose.

Setup: the game consists of a "dealer" and a "player". Both participants are initially dealt 2 cards. The player can see their 2 cards, but can only see one of the dealer's cards.

Card values: all of the card values are pretty straightforward, except for the ace. The numbers 2 through 10 are worth their face value. The jack, queen, and king are each worth 10, and the ace can be worth 1 or 11. The ace's value is determined each time a new card is drawn from the deck. For example, if the hand contains a 2, an ace, and a 5, then the total value of the hand is 18. In this case, the ace is worth 11 because the sum of the hand (2 + 11 + 5) doesn't exceed 21. Now, say another card is drawn and it happens to be an ace. Your program will have to determine the value of both aces. If the sum of the hand (2 + 11 + 5 + 11) exceeds 21 then one of the aces must be worth 1, resulting in the hand's total value being 19. What happens if another card is drawn and it also happens to be an ace? It can get tricky if there are multiple aces in a hand, so your program must account for that.

## Getting Started ##

Figure out a data structure to contain the "deck" and the "player's cards" and "dealer's cards". Maybe a hash? An array? A nested array? Your decision will have consequences throughout your code, but don't be afraid of choosing the wrong one. Play around with an idea, and see how far you can push it. If it doesn't work, back out of it.
