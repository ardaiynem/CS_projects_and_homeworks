import java.util.Scanner;

/**
 * This program inputs a nucleic acid chain consisting of A,G,T,C letters to represent nucleotides
 * then encodes this chain into letter and number of consecutively repeating count form.
 *
 * @author Arda Iynem
 * @version 1.0 11.03.2021
 */
public class Lab05_Q2 {

    public static void main(String[] args) {
        // Variables
        int countAcid;
        String seqBasic,
               seqEncoded;
        boolean isAcid;
        Scanner scan = new Scanner(System.in);

        // Get user input for seqBasic
        System.out.print( "Enter a nucleic acid sequence: " );
        seqBasic = scan.next();
        scan.close();

        // Assign loop variables
        countAcid = 1;
        seqEncoded = "";
        isAcid = true;


        for ( int i = 0; i < seqBasic.length() && isAcid; i++ ) {
            // Check every character whether they represent a nucleotide or not
            if ( seqBasic.charAt(i) == 'A' || seqBasic.charAt(i) == 'C' ||
                 seqBasic.charAt(i) == 'T' || seqBasic.charAt(i) == 'G') {
                isAcid = true;
            }
            else {
                isAcid = false;
            }

            // Compare each character to the next character if they are same increase counter by 1
            if (  i + 1 < seqBasic.length() && seqBasic.charAt(i + 1) == seqBasic.charAt(i) ) {
                countAcid++;
            }
            // When a character is not same with next, add the character and its repeating count to the string
            else {
                seqEncoded = seqEncoded + seqBasic.charAt(i) + countAcid;
                countAcid = 1;
            }
        }

        // Print out the results if all characters are representing a nucleotide else show error
        if ( isAcid ) {
            System.out.print( "Encoded Sequence: " + seqEncoded );
        }
        else {
            System.out.print( "Error - Wrong nucleic acid sequence input!" );
        }

    }
}
