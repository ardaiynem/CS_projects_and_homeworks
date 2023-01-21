import java.util.ArrayList;
import java.util.Scanner;

/**
 * This program creates an array list with integer objects then lists the sum of integers that
 * could be divided by the input divisor. After removing duplicated numbers lists are printed.
 *
 * @author Arda Iynem
 * @version 1.0 29.04.2021
 */
public class LabApp {
    // Static Variables
    private static int divisor;

    public static void main(String[] args) {
        // Variables
        ArrayList<Integer> list;
        ArrayList<Integer> listClone;

        list = fillList();
        // Initializes an array list with the size of preceding list
        listClone = new ArrayList<>(list.size());

        sumDivisible(list, listClone, divisor);
        removeDuplicates(listClone);
    }

    /**
     * Remove the same occurrences in an array list
     * @param list Time array list
     */
    private static void removeDuplicates(ArrayList<Integer> list) {
        for (int i = 0; i < list.size() && list.size() > 1; i++) {
            int j = i + 1;
            while (j < list.size()) {
                if (list.get(i).equals(list.get(j))) {
                    list.remove(j);
                }
                else {
                    j++;
                }
            }
        }

        System.out.print("Sum List (no duplicates): " + list);
    }

    /**
     * Fills array list from user inputs and assign the divisor
     * @return Array list of integers
     */
    private static ArrayList<Integer> fillList() {
        // Variables
        ArrayList<Integer> list = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter values:");

        while (scanner.hasNextInt()) {
            list.add(scanner.nextInt());
        }

        scanner.next();
        System.out.print("Enter divisor: ");
        divisor = scanner.nextInt();
        scanner.close();

        return list;
    }

    /**
     * Sums all the divisible values' corresponding integers
     * @param listMain Array list of integers
     * @param listClone Array list of integers
     * @param divisor Divisor
     */
    private static void sumDivisible(ArrayList<Integer> listMain,ArrayList<Integer> listClone,int divisor) {
        int sumVal;

        sumVal = 0;
        for (Integer value : listMain) {
            if (value % divisor == 0) {
                sumVal += value;
            }
            listClone.add(sumVal);
        }

        System.out.println("List: " + listMain);
        System.out.println("Sum List: " + listClone);
    }
}
