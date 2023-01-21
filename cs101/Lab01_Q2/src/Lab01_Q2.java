/*
 * SuperCalculations
 *
 * This program makes some specific calculations.
 *
 * @Arda Iynem
 * @08/02/2021
 */
public class Lab01_Q2
{

    public static void main(String[] args )
    {
        // Variables
        double answer1;
        double answer2;
        double answer3;

        // Calculations of the given expressions. Using Math library to calculate exponential numbers.
        answer1 = ( ( 23.2 - 7.1 / 2.2 ) / ( ( 5.1 - 3.7 ) * ( 3.4 + 4.2 ) ) );
        answer2 = ( ( 35.7 * 64.1 - Math.pow( 6.0, 3.0 ) ) / ( 43  + Math.pow( 5, 2 ) ) );
        answer3 = Math.pow( ( 2.1 + 8.0 ), ( -1.0 / 3.0 ) );

        // Printing out the calculations
        System.out.println( "Answer1 is:\t" + answer1 );
        System.out.println( "Answer2 is:\t" + answer2 );
        System.out.println( "Answer3  is:\t" + answer3 );
    }
    
}
