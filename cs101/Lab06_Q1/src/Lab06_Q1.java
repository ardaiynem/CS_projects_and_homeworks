import java.util.Scanner;

/**
 * This program validates and generates credit card numbers according to the Luhn Formula
 *
 * @author Arda Iynem
 * @version 1.0 18.03.2021
 */
public class Lab06_Q1 {
    // Global Variables
    static boolean repeatMenu;

    /**
     * This main method displays the menu until user exits
     */
    public static void main(String[] args) {
        repeatMenu = true;

        // Calls displayMenu method until repeatMenu is assigned false
        while (repeatMenu) {
            displayMenu();
        }
    }

    /**
     * This method reverses a number by multiplying right-most digits by 10 in the loop
     * @param num This parameter is the number that user inputs
     * @return Returns the reversed form of number
     */
    public static long reverseNumber(long num) {
        long numReversed;

        numReversed = 0;
        // Right digits multiplied by 10 while left digits being added in the loop
        for (; num > 0; num /= 10) {
            numReversed = numReversed * 10 + num % 10;
        }

        return numReversed;
    }

    /**
     * This method counts the amount of digits in a number
     * @param num This parameter is the number that user inputs
     * @return Returns the number of digits' amount
     */
    public static int countDigits(long num) {
        int counter;

        counter = 0;
        // Divides number by 10 until it can't be divided anymore while counting how many time it was divided
        for (; num > 0; num /= 10) {
            counter++;
        }

        return counter;
    }

    /**
     * This method applies Luhn Formula to the card number
     * @param numCard This parameter is the card number that user inputs
     * @return Returns the sum of digits according to the formula
     */
    public static int sumDigits(long numCard) {
        long numReversed;
        int numLength,
            digitLuhn,
            digitValue,
            sum;

        // Reverse the card number excluding last digit
        numReversed = reverseNumber(numCard / 10);
        numLength = countDigits(numCard);
        sum = 0;

        // Assign digitLuhn 0 if card number's length is even else assign 1
        if (numLength % 2 == 0) {
            digitLuhn = 0;
        }
        else {
            digitLuhn = 1;
        }

        // Sum all digits while applying Luhn Formula to odd digits
        for (; numReversed > 0; numReversed /= 10) {
            digitLuhn++;

            // Assign digitValue the right-most digit
            digitValue = (int) (numReversed % 10);

            // If digitLuhn is odd multiply digitValue by 2 then subtract 9 if digitValue > 9 according to Luhn
            if (digitLuhn % 2 == 1) {
                digitValue *= 2;

                if (digitValue > 9) {
                    digitValue -= 9;
                }
            }
            //
            sum += digitValue;
        }

        return sum;
    }

    /**
     * This method compares sumDigits' returned value with the last digit to check card number's validity
     * @param numCard This parameter is the card number that user inputs
     * @return Returns a boolean value to declare validity of card number
     */
    public static boolean isValidCard(long numCard) {
        // Return true or false if sum of sumDigits and last digit is modula of 10 or not
        return ((sumDigits(numCard) + (int) (numCard % 10)) % 10 == 0);
    }

    /**
     * This method randomly generates 15 or 16 digit card number until number obeys The Luhn Formula
     * @return Returns the properly generated card number
     */
    public static long generateValidCard() {
        long checkCard;

        checkCard = 0;
        // Generate 15 or 16 digit random number and loop until a valid number generated
        do {
            for (int i = 14; i < 16; i++) {
                // Assign first digit a random number between 0-10 to be sure it is not 0
                checkCard = (int) Math.floor(Math.random() * 9 + 1);

                // Multiply by ten and add new 14 or 15 number to generate a random 15 or 16 digit number
                for (int j = 0; j < i; j++) {
                        checkCard = checkCard * 10 + (int) Math.floor(Math.random() * 10);
                }

                // Check if this number is valid with isValidCard method then return if it is true
                if (isValidCard(checkCard)) {
                    return checkCard;
                }
            }
        } while (!isValidCard(checkCard));

        return checkCard;
    }

    /**
     * This method displays a menu with 3 choices and uses Scanner object to get users input
     */
    public static void displayMenu() {
        int choice;
        Scanner scan = new Scanner(System.in);

        // Print menu choices
        System.out.println("---------------MENU---------------");
        System.out.println("1 - Validate Credit Card Number");
        System.out.println("2 - Generate Valid Credit Card Number");
        System.out.println("3 - Exit");

        System.out.print("Enter choice: ");
        choice = scan.nextInt();

        // Check user's input then print matching message and terminate the program if choice is 3
        if (choice == 1) {
            System.out.print("Enter credit card number to validate: ");
            System.out.println("Card number is valid: " + isValidCard(scan.nextLong()));
        }
        else if (choice == 2) {
            System.out.println("Sample valid credit card: " + generateValidCard());
        }
        else if (choice == 3) {
            System.out.println("Goodbye!");
            repeatMenu = false;
            scan.close();
        }
        else {
            System.out.println("Invalid choice - try again");
        }
    }
}

