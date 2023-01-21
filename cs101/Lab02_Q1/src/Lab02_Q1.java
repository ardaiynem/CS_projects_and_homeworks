import java.util.Scanner;

/**
 * This program converts millimeters to some other measurement units.
 * 
 * @author Arda Iynem
 * @version 1.0 18.02.2021
 */
public class Lab02_Q1
{

    public static void main( String[] args )
    {
        // Variables
        double millimeters,
               micrometers,
               centimeters,
               meters;

        // Create scanner object and initialize millimeters from user input
        System.out.print( "Enter measurement in millimeters: " );
        
        Scanner input = new Scanner( System.in );
        millimeters = input.nextDouble();

        // Convert millimeters to other types of units
        micrometers = ( millimeters * 1000 );
        centimeters = ( millimeters / 10 );
        meters = ( millimeters / 1000 );

        // Print out with printf function to allocate proper spaces between columns
        System.out.printf( "%-15s:%15.3f%n", "Micrometers", micrometers );
        System.out.printf( "%-15s:%15.3f%n", "Millimeters", millimeters );
        System.out.printf( "%-15s:%15.3f%n", "Centimeters", centimeters );
        System.out.printf( "%-15s:%15.3f%n", "Meters", meters );

        // Close Scanner object
        input.close();
    }

}
