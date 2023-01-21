import java.util.Scanner;

/**
 * This program uses Taylor series until nth power as user inputs the n
 * and approaches to sin(x) as radian is also declared by the user
 *
 * @author Arda Iynem
 * @version 1.1 04.03.2021
 */
public class Lab04_Q2 {

    public static void main(String[] args) {
        // Variables
        double radian,
               step,
               sum;
        int repetition,
            count;
        Scanner input = new Scanner(System.in);

        // Get user input for radian repetition repetition values
        System.out.print( "Enter a radian value: " );
        radian = input.nextDouble();
        System.out.print( "Enter a repetition value: " );
        repetition = ( input.nextInt() + 1 ) / 2;
        input.close();

        // Assign variables to use in loop
        step = radian;
        sum = 0;
        count = 1;

        // For the given repetition time sum the calculated steps to approach sinus value
        while ( count <= repetition ) {
            sum = sum + step;
            // According to Taylor's formula calculate each step
            step = step * radian * radian / ( 2 * count * ( 2 * count + 1 ) ) * -1;
            count = count + 1;
        }

        // Print out the result
        System.out.print( "Approximate calculation for sin(" + radian + ") is: " + sum );
    }
}
