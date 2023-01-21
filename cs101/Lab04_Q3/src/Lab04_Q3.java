import java.util.Scanner;

/**
 * This program compares a word input's characters with each other
 * and checks whether all characters used twice or not
 *
 * @author Arda Iynem
 * @version 1.0 04.03.2021
 */
public class Lab04_Q3 {

    public static void main(String[] args) {
        // Variables
        int charPos,
            charCompare,
            nestedCount;
        boolean isMatch;
        String word;
        Scanner input = new Scanner(System.in);

        // Get word input and close scanner
        System.out.print( "Enter a word: " );
        word = input.next();
        input.close();

        // Assign variables for the loop
        charPos = 0;
        charCompare = 0;
        nestedCount = 0;
        isMatch = true;

        // Compare character at charPos index with all characters in order
        while ( charPos < word.length() && isMatch ) {
            nestedCount = 0;
            charCompare = 0;
            while ( charCompare < word.length() ) {
                // If compared characters match increase nestedCount by 1.
                if ( Character.toLowerCase(word.charAt(charCompare)) == Character.toLowerCase(word.charAt(charPos)) ) {
                    nestedCount = nestedCount + 1;
                }

                charCompare = charCompare + 1;
            }

            // If character at charPos didn't match twice, set isMatch false
            if ( nestedCount != 2 ) {
                isMatch = false;
            }

            charPos = charPos + 1;
        }

        // Print out the results depending on isMatch
        if ( isMatch ){
            System.out.print( word + " is a pair-word!" );
        }
        else {
            System.out.print( word + " is not a pair-word!" );
        }
    }
}
