import java.util.Scanner;

/**
 * This program rounds then sums two input numbers.
 * If first rounded number is multiple of 3 then second number won't be rounded in sum.
 *
 * @author Arda Iynem
 * @version 1.0 25.02.2021
 */
public class Lab03_Q1
{

    public static void main (String[] args)
    {
        // Variables
        int numFirst,
            numSecond,
            roundedFirst,
            roundedSecond;

        // Create scanner object and assign numbers from user input
        System.out.print( "Enter 2 numbers: " );

        Scanner scan = new Scanner(System.in);
        numFirst = scan.nextInt();
        numSecond = scan.nextInt();

        scan.close();

        // Use remainder of 10 to round up or down the first number
        if ( numFirst % 10 >= 5 ) {
            roundedFirst = numFirst + 10 - numFirst % 10;
        }
        else {
            roundedFirst = numFirst - numFirst % 10;
        }

        // Use remainder of 10 to round up or down the second number
        if ( numSecond % 10 >= 5 ) {
            roundedSecond = numSecond + 10 - numSecond % 10;
        }
        else {
            roundedSecond = numSecond - numSecond % 10;
        }

        // If first rounded value is multiple of three use not rounded value of second, else sum the rounded values
        if ( roundedFirst % 3 == 0 ) {
            System.out.println("The sum of the rounded values of "+ numFirst
                               + " and " + numSecond + ": " + ( roundedFirst + numSecond ) );
        }
        else {
            System.out.println("The sum of the rounded values of "+ numFirst
                               + " and " + numSecond + ": " + ( roundedFirst + roundedSecond ) );
        }
    }

}
