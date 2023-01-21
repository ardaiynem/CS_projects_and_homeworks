import java.util.Arrays;
import java.util.Random;

/**
 * This class is the blueprint of Deck object which has a list of
 * 52 cards and has same function related to the cards.
 *
 * @author Arda Iynem
 * @version 1.00 05.05.2021
 */
public class Deck {
    //Instance Variables
    private Card[] deck = new Card[52];
    private int topCard;

    /**
     * Constructor method initializes and shuffles the deck
     */
    public Deck() {
        initialize();
        shuffle();
        topCard = 0;
    }

    /**
     * Initializes deck array with all 52 cards in order.
     */
    public void initialize() {
        int value;
        int suit;

        // Set all empty elements of deck with cards from suit (1-4) and number (1-13) for each suit
        value = 1;
        suit = 1;
        for (int i = 0; i < deck.length; i++) {
            deck[i] = new Card(suit, value);
            value++;

            // Increase suit value by 1 for every 13 rounds of the loop
            if((i + 1) % 13 == 0) {
                value = 1;
                suit++;
            }
        }
    }

    /**
     * Shuffles the deck by creating a copy of the main array
     * then setting the main array in random order again
     */
    public void shuffle() {
        Card[] deckTemp = Arrays.copyOf(deck, deck.length);
        Random rand = new Random();
        int random;
        int tempSize;

        // Set deck in order with random elements of deckTemp , an decrease deckTemp size every time
        // to prevent selecting a random element which was selected before
        tempSize = deckTemp.length;
        for (int i = 0; i < deck.length; i++) {
            random = rand.nextInt(tempSize);
            deck[i] = deckTemp[random];

            deckTemp[random] = deckTemp[tempSize - 1];
            tempSize--;
        }
    }

    /**
     * Deals the card on top then increases topCard variable
     * @return Card with the index topCard
     */
    public Card dealCard() {
        Card tmpCard;
        tmpCard = deck[topCard];
        topCard++;

        return tmpCard;
    }

    @Override
    public String toString() {
        String allCards;

        // Add all elements of deck to a string object, line by line
        allCards = deck[0].toString();
        for (int i = 1; i < deck.length; i++) {
            allCards += "\n" + deck[i];
        }

        return allCards;
    }
}
