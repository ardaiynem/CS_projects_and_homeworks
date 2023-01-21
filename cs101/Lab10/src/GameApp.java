import java.util.Scanner;

/**
 * This program is an user interacted blackjack game with card, deck
 * and game objects just as real life due to random number generator.
 *
 * @author Arda Iynem
 * @version 1.00 05.05.2021
 */
public class GameApp {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Ask user whether they want to play again or not
        do {
            Game game = new Game();
            game.play();
            game.determineResult();

            System.out.print("Play again? (y/n): ");
        } while (scanner.next().equals("y"));

        System.out.print("Thanks for playing - Goodbye!");
    }
}
