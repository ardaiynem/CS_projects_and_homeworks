import java.util.Scanner;

/**
 * This program discriminates digit characters from users string input and sums them
 *
 * @author Arda Iynem
 * @version 1.0 11.03.2021
 */
public class Lab05_Q1_A {

    public static void main(String[] args) {
        // Variables
        int sum;
        String sentence;
        boolean anyDigit;
        Scanner scan = new Scanner(System.in);

        System.out.print( "Enter a sentence: " );

        // Assign variables and close scanner object
        sentence = scan.nextLine();
        sum = 0;
        anyDigit = false;
        scan.close();

        // Check every character of string whether they are digit or not and if there are any digits
        for ( int indChar = 0; indChar < sentence.length(); indChar++ ) {
            if ( Character.isDigit(sentence.charAt(indChar)) ) {
                // Subtract 48 from the ASCII codes to acquire corresponding number
                sum = sum + sentence.charAt(indChar) - 48;
                anyDigit = true;
            }
        }

        // If there are no digits in input show error, else show sum
        if ( anyDigit ) {
            System.out.print( "The sum of the digits is: " + sum );
        }
        else {
            System.out.print( "No numeric characters exist in the input string" );
        }
    }
}
