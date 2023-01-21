import java.util.Scanner;

/**
 * This program compares the first and last n characters of an input string.
 * If the last character is a punctuation it is not involved.
 *
 * @author Arda Iynem
 * @version 1.1 25.02.2021
 */
public class Lab03_Q3
{

    public static void main(String[] args)
    {
        // Variables
        int n,
            posChar;

        String input,
               firstSub,
               lastSub;

        // Create a scanner object and assign string from user input then ask for n value
        System.out.print( "Enter a sentence: " );

        Scanner scan = new Scanner(System.in);
        input = scan.nextLine();
        System.out.print( "Enter an integer value between 1 and " + input.length() +": " );

        // If scanned value is an integer assign n, otherwise display error
        if ( scan.hasNextInt() ) {
            n = scan.nextInt();

            // If n is not within boundaries display error, else continue comparing process
            if ( n >= input.length() || n <= 1 ) {
                System.out.print( "Error - value must be between 1 and " + input.length() );
            }
            else {
                // Set posChar to index of last if last character is alphabetic else set it prior character to last
                if ( Character.isAlphabetic(input.charAt(input.length()-1)) ) {
                    posChar = input.length() - n;
                }
                else {
                    posChar = input.length() - n - 1;
                }

                // Initialize firstSub and lastSub by using substring
                firstSub = input.substring(0, n);
                lastSub = input.substring(posChar, posChar + n);

                // Compare substrings with equals method
                if ( firstSub.equals(lastSub) ) {
                    System.out.print( "First and last " + n +" characters are the same" );
                }
                else {
                    System.out.print( "First and last " + n +" characters are not the same" );
                }
            }
        }
        else {
            System.out.print( "Error - value must be an integer" );
        }

        scan.close();
    }

}
