/*
 * Informator
 *
 * This program exhibits some useful information after some calculations.
 *
 * @Arda Iynem
 * @08/02/2021
 */
public class Lab01_Q3
{

    public static void main (String[] args)
    {
        // Constants
        final long TOTAL_WORLD = 510072000;
        final long TOTAL_TURKEY = 783562;

        // Variables
        double worldLandPercentage;
        long worldLandArea;
        long worldSeaArea;

        double turkeySeaPercentage;
        long turkeyLandArea;
        long turkeySeaArea;

        double comparedLandPercentage;
        double comparedSeaPercentage;

        // Calculating the areas of sea and land with using the percentages for World. Typecasting doubles into long in order to get rid of decimals.
        worldLandPercentage = 29.2;
        worldLandArea = (long) ( TOTAL_WORLD * worldLandPercentage / 100 );
        worldSeaArea = ( TOTAL_WORLD - worldLandArea );

        // Calculating the areas of sea and land with using the percentages for Turkey. Typecasting doubles into long in order to get rid of decimals.
        turkeySeaPercentage = 1.3;
        turkeySeaArea = (long) ( TOTAL_TURKEY * turkeySeaPercentage / 100 );
        turkeyLandArea = ( TOTAL_TURKEY - turkeySeaArea );

        // Calculating the percentage of Turkey's and World's lands and seas. Typecasting to double in order to avoid a long division which may result with 0.
        comparedLandPercentage = (double) turkeyLandArea / worldLandArea * 100;
        comparedSeaPercentage = (double) turkeySeaArea / worldSeaArea * 100;

        // Printing out the calculated the information.
        System.out.println( "Earth has " + worldLandArea + "km2 dry land and " + worldSeaArea + "km2 water." );
        System.out.println( "Turkey has " + turkeyLandArea + "km2 dry land and " + turkeySeaArea + "km2 water." );
        System.out.println( "Turkey has " + comparedLandPercentage + " percent of the Earth's dry land." );
        System.out.println( "And " + comparedSeaPercentage + " percent of the Earth's water." );
    }

}
