import java.util.Scanner;

/**
 * This program changes given date and time format to another one.
 *
 * @author Arda Iynem
 * @version 1.0 18.02.2021
 */
public class Lab02_Q3
{

    public static void main ( String[] args )
    {
        // Variables
        String dateAndTime,
               year,
               month,
               day,
               dayName,
               hour,
               minute;

        int posFirstSlash,
            posSecondSlash,
            posComma,
            posDash,
            posColon;

        // Create Scanner object and  get users input
        System.out.print( "Enter date and time: " );
        
        Scanner input = new Scanner( System.in );
        dateAndTime = input.nextLine();

        // Use indexOf function to find positions of separator characters
        posFirstSlash = dateAndTime.indexOf( "/" );
        posSecondSlash = dateAndTime.indexOf( "/", posFirstSlash + 1 );
        posComma = dateAndTime.indexOf( "," );
        posDash = dateAndTime.indexOf( "-" );
        posColon = dateAndTime.indexOf( ":" );

        // Use substring function to get specific parts of the input by using already found separator positions
        year = dateAndTime.substring( 0, posFirstSlash );
        month = dateAndTime.substring( posFirstSlash + 1, posSecondSlash );
        day = dateAndTime.substring( posSecondSlash + 1, posComma );
        dayName = dateAndTime.substring( posComma + 1, posDash );
        hour = dateAndTime.substring( posDash + 1, posColon );
        minute = dateAndTime.substring( posColon + 1 );

        // Print out the new date and time format
        System.out.print( dayName + " " + month + " " + day + "," + year + " " + minute + " minutes past " + hour );

        // Close Scanner object
        input.close();
    }

}
