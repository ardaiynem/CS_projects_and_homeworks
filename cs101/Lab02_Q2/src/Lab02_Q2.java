import java.util.Scanner;

/**
 * This program calculates expenses from total salary and percentages.
 *
 * @author Arda Iynem
 * @version 1.0 18.02.2021
 */
public class Lab02_Q2
{

    public static void main ( String[] args )
    {
        // Constant
        final int PER_HOUSING = 30,
                  PER_FOOD =  15,
                  PER_TRANSPORT = 20,
                  PER_SAVINGS = 18,
                  PER_EDUCATION = 12;

        // Variables
        double salary,
               housing,
               food,
               transport,
               savings,
               education,
               total,
               remaining;

        // Create Scanner object and get user input to initialize salary
        System.out.print( "Enter monthly salary: " );

        Scanner input = new Scanner( System.in );
        salary = input.nextInt();

        // Calculate expenses from salary and percentages then find total and remaining
        housing = ( salary * PER_HOUSING / 100 );
        food = ( salary * PER_FOOD / 100 );
        transport = ( salary * PER_TRANSPORT / 100 );
        savings = ( salary * PER_SAVINGS / 100 );
        education = ( salary * PER_EDUCATION / 100 );
        total = ( housing + food + transport + savings + education );
        remaining = ( salary - total );

        // Print out the table by using printf to allocate spaces between columns
        System.out.println( "---------------------------------------------" );
        System.out.printf( "|%-20s%%%-14d%7.2f |%n", "Housing", PER_HOUSING, housing );
        System.out.printf( "|%-20s%%%-14d%7.2f |%n", "Food", PER_FOOD, food );
        System.out.printf( "|%-20s%%%-14d%7.2f |%n", "Transport", PER_TRANSPORT, transport );
        System.out.printf( "|%-20s%%%-14d%7.2f |%n", "Savings", PER_SAVINGS, savings );
        System.out.printf( "|%-20s%%%-14d%7.2f |%n", "Education", PER_EDUCATION, education );
        System.out.printf( "|%-20s%-15s%7.2f |%n", "", "TOTAL", total );
        System.out.printf( "|%-20s%-15s%7.2f |%n", "", "REMAINING", remaining );
        System.out.println( "---------------------------------------------" );

        // Close Scanner object
        input.close();
    }

}
