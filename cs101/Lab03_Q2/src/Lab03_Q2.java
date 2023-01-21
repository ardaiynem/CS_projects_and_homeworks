import java.util.Scanner;

/**
 * This program calculates child and senior dependency and categorize them by using user inputs
 *
 * @author Arda Iynem
 * @version 1.0 25.02.2021
 */
public class Lab03_Q2
{

    public static void main(String[] args)
    {
        // Variables
        int numChild,
            numAdult,
            numSenior;

        double depChild,
               depSenior;

        String category;

        // Create scanner object and assign int variables from user input
        Scanner scan = new Scanner(System.in);

        System.out.print( "Enter number citizen under 15: " );
        numChild = scan.nextInt();
        System.out.print( "Enter number citizen between 15 and 64: " );
        numAdult = scan.nextInt();
        System.out.print( "Enter number citizen over 64: " );
        numSenior = scan.nextInt();

        scan.close();

        // Calculate dependencies by typecasting to double to prevent integer division
        depChild = (double) numChild / numAdult * 100;
        depSenior = (double) numSenior / numAdult * 100;

        // Determine the dependency category with nested if statements
        if( depSenior < 15 ) {
            if ( depChild < 29 ) {
                category = "Low Overall Dependency";
            }
            else if ( depChild > 45 ) {
                category = "High Child Dependency";
            }
            else {
                category = "Moderate Child Dependency";
            }
        }
        else {
            if ( depChild >= 29 ) {
                category = "Double Dependency";
            }
            else {
                category = "High Old-age Dependency";
            }
        }

        // Print out dependencies and category with printf function to limit decimals
        System.out.printf( "%nChild Dependency: %.1f", depChild );
        System.out.printf( "%nSenior Dependency: %.1f", depSenior );
        System.out.printf( "%nAge Dependency Category: %s", category );
    }

}
