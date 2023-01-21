/**
 * This program each three-digit narcissistic number and  their  sum. A  narcissistic number is a number
 * that is equal to the sum of its digits each raised to the power of the number of digits.
 *
 * @author Arda Iynem
 * @version 1.0 11.03.2021
 */
public class Lab05_Q1_B {

    public static void main(String[] args) {
        // Variables
        int sumTotal,
            checkNumber;

        sumTotal = 0;

        // Check every three-digit number if it s narcissistic or not
        for ( int number = 100; number < 1000; number++ ) {
            checkNumber = 0;

            // Find cube of the right most digit and divide by 10 to find cube of next digit then sum all
            for ( int lastDigit = number; lastDigit > 0; lastDigit = lastDigit / 10 ){
                checkNumber = checkNumber + (int) Math.pow(lastDigit % 10, 3);
            }

            // If sum of cubes of all digits equals to number show it is narcissistic and add to sumTotal
            if ( number == checkNumber ){
                System.out.println( number + " is a narcissistic number" );
                sumTotal = sumTotal + number;
            }
        }

        System.out.println( "Sum of three-digit narcissistic numbers: " + sumTotal );
    }
}
