import java.util.Scanner;

/**
 * This program inputs a minimum and maximum number of people and displays the
 * probabilities of whether their birthday is same day or not, through a formula.
 *
 * @author Arda Iynem
 * @version 1.0 11.03.2021
 */
public class Lab05_Q3 {

    public static void main(String[] args) {
        // Constant
        final int daysInYear = 365;

        // Variables
        int peopleMin,
            peopleMax;
        double sameBirthday;
        Scanner scan = new Scanner(System.in);

        // Get inputs of max and min people number and show error if min is greater than max then ask again
        do {
            System.out.print( "Enter the minimum and maximum number of people: " );
            peopleMin = scan.nextInt();
            peopleMax = scan.nextInt();
            if ( peopleMin >= peopleMax ) {
                System.out.println( "Invalid input - minimum must be less than maximum..." );
            }
        } while ( peopleMin >= peopleMax );


        scan.close();
        System.out.printf( "%-21s%-11s%n","NUMBER OF PEOPLE", "PROBABILITY" );

        // Calculate the probability for all numbers between min and max
        for ( ; peopleMin <= peopleMax; peopleMin++ ) {
            sameBirthday= 1;

            // Calculate possibility according to the formula
            for ( int r = 0; r < peopleMin; r++ ) {
                sameBirthday = sameBirthday * (daysInYear - r) / daysInYear;
            }

            sameBirthday = 1 - sameBirthday;

            // Print out the result formatted to create a table
            System.out.printf( "%-21d%-11.3f%n", peopleMin, sameBirthday );
        }
    }
}
