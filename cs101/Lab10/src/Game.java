import java.util.Scanner;

/**
 * This class is the blueprint of Game object which has a list of
 * Cards of dealer and player and has a deck object.
 *
 * @author Arda Iynem
 * @version 1.00 05.05.2021
 */
public class Game {
    //Instance Variables
    private final Deck gameDeck;
    private final Card[] playerHand;
    private final Card[] dealerHand;
    private int playerCards;
    private int dealerCards;
    private int playerValue;
    private int dealerValue;

    /**
     * Constructor method initializes deck and hands
     */
    public Game() {
        gameDeck = new Deck();
        playerHand = new Card[11];
        dealerHand = new Card[11];
        playerCards = 0;
        dealerCards = 0;
        playerValue = 0;
        dealerValue = 0;
    }

    /**
     * Prints the cards in the hand passed in parameters line by line
     * @param hand Dealer's or player's hand
     */
    public void printHand(Card[] hand) {
        int amountCards;
        int value;

        // Check whether the input Card array is equal to that of player or dealer
        if (hand.equals(playerHand)) {
            amountCards = playerCards;
            value = playerValue;
            System.out.println("Your hand:");
        }
        else {
            amountCards = dealerCards;
            value = dealerValue;
            System.out.println("Dealer hand:");
        }

        // Print the hand "amount of card" times to not print null elements
        for (int i = 0; i < amountCards; i++) {
            System.out.println(hand[i]);
        }

        if (value == 21) {
            System.out.println("BlackJack!!");
        }
    }

    /**
     * Determines who won the game according to the rules than prints the result
     */
    public void determineResult() {
        System.out.println("Player:" + playerValue + " Dealer:" + dealerValue);

        // Due to to De Morgan's and the game rules these are the only 2 options to win
        if (playerValue > 21 || (dealerValue <= 21 && dealerValue >= playerValue)) {
            System.out.println("Sorry - you lose");
        }
        else {
            System.out.println("Congrats - You win!");
        }

        System.out.println();
    }

    /**
     * Simulates an interactive blackjack games with the help of other methods and objects
     */
    public void play() {
        Scanner scanner = new Scanner(System.in);
        boolean isRepeat;

        // Deal 2 cards both to player and dealer. Update other variables related to the dealt cards
        for (int i = 0; i < 2; i++) {
            playerHand[i] = gameDeck.dealCard();
            dealerHand[i] = gameDeck.dealCard();
            playerCards++;
            dealerCards++;
            playerValue += playerHand[i].getValue();
            dealerValue += dealerHand[i].getValue();
        }

        printHand(playerHand);

        // Ask whether player wants to hit or stay as long as value of cards is less than 21
        isRepeat = true;
        while (isRepeat && playerValue < 21) {
            System.out.print("\n(1)Hit or (2)Stay: ");
            if (scanner.nextInt() == 1) {
                playerHand[playerCards] = gameDeck.dealCard();
                playerValue += playerHand[playerCards].getValue();
                playerCards++;
                printHand(playerHand);
            }
            else {
                isRepeat = false;
            }
        }

        if (playerValue > 21) {
            System.out.println();
            printHand(dealerHand);
            return;
        }
        // Deal cards to the dealer until values of the cards are equal or greater than 17
        while (dealerValue < 17) {
            dealerHand[dealerCards] = gameDeck.dealCard();
            dealerValue += dealerHand[dealerCards].getValue();
            dealerCards++;
        }

        System.out.println();
        printHand(dealerHand);
    }
}
