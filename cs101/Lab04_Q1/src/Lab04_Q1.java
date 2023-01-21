import java.util.Scanner;

/**
 * This program calculates the total distance traveled and bounce number
 * of 4 type of balls until it bounces less than 0.1 meters
 * Bouncing coefficients for the balls are constants whereas initial height and ball type
 * is declared by the user's inputs
 *
 * @author Arda Iynem
 * @version 1.1 04.03.2021
 */
public class Lab04_Q1 {

    public static void main(String[] args) {
        // Constants
        final double BALL_TENNIS = 0.7,
                     BALL_BASKET = 0.75,
                     BALL_SUPER = 0.9,
                     BALL_SOFT = 0.3;

        // Variables
        double coefficient,
               height,
               distanceTraveled;
        int countBounce;
        String ballType;
        Scanner input = new Scanner(System.in);

        // Get user input and set coefficient if input matches, else set to 0 and print error message
        System.out.print("Enter Ball Type: ");
        ballType = input.nextLine();

        if (ballType.equals("Tennis Ball")) {
            coefficient = BALL_TENNIS;
        }
        else if (ballType.equals("Basket Ball")) {
            coefficient = BALL_BASKET;
        }
        else if (ballType.equals("Super Ball")) {
            coefficient = BALL_SUPER;
        }
        else if (ballType.equals("Soft Ball")) {
            coefficient = BALL_SOFT;
        }
        else {
            System.out.print("Invalid Ball Type - Exiting...");
            coefficient = 0;
        }

        if (coefficient != 0) {
            System.out.print("Enter initial height(m): ");

            // Ask for height input until it is double type
            while (!input.hasNextDouble()) {
                System.out.println("Height must be numeric value...");
                System.out.print("Enter initial height(m): ");
                input.nextLine();
            }

            height = input.nextDouble();

            // If height is less than 0.1 set distanceTraveled to height
            if (height < 0.1) {
                distanceTraveled = height;
                countBounce = 0;
            }
            // Else, until height is less than 0.1 sum heights before and after bounce to find traveled distance.
            else {
                distanceTraveled = 0;
                countBounce = 0;

                while (height >= 0.1) {
                    distanceTraveled = distanceTraveled + height;
                    height = height * coefficient;
                    distanceTraveled = distanceTraveled + height;
                    countBounce = countBounce + 1;
                }

                // Subtract last extra bounce upwards to get correct result
                distanceTraveled = distanceTraveled - height;
            }

            // Print out the results
            System.out.println("Number of bounces: " + countBounce);
            System.out.printf("Meters travelled: %.2f", distanceTraveled);

            input.close();
        }
    }
}
