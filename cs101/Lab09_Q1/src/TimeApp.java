import java.util.ArrayList;
import java.util.Scanner;

/**
 * This program creates Time objects and stores them in an array list. Then having added inputs
 * of minutes to all Time objects, Array lists are sorted earlier to later and are printed.
 *
 * @author Arda Iynem
 * @version 1.0 29.04.2021
 */
public class TimeApp {
    // Static Variable
    static ArrayList<Time> times = new  ArrayList<Time>();

    public static void main(String[] args) {
        // Variables
        Scanner scanner = new Scanner(System.in);
        char delayType;
        int delayTime;
        Time afternoon = new Time(12,30);

        // Takes Time inputs 7 times and creates Time objects by passing the inputs into constructors
        int i = 0;
        while (i < 7) {
            Time tmpTime;
            int hours;
            int minutes;

            System.out.println("Enter appointment time: ");

            scanner.useDelimiter(":|\\n");
            hours = scanner.nextInt();
            minutes = scanner.nextInt();

            tmpTime = new Time(hours, minutes);
            times.add(tmpTime);

            i++;
        }

        scanner.reset();
        System.out.println("\nScheduled Appointments:");
        printAppointments(times);
        System.out.println();

        System.out.print("When will delay start (M)orning / (A)fternoon: ");
        delayType = scanner.next().charAt(0);

        // Repeats user to input until correct form is input
        while (delayType != 'M' && delayType != 'A') {
            System.out.println("Wrong input type. Please input again and be aware of using upper case.");
            System.out.print("When will delay start (M)orning / (A)fternoon: ");
            delayType = scanner.next().charAt(0);
        }

        System.out.print("How many minutes will the doctor be late: ");
        delayTime = scanner.nextInt();

        // Delays time according to the user's choice
        if (delayType == 'M') {
            for (Time time: times) {
                time.addTime(delayTime);
            }
        }
        else {
            for (Time time: times) {
                if (!time.lessThan(afternoon)) {
                    time.addTime(delayTime);
                }
            }
        }

        // Prints updated Time objects
        System.out.println("\nUpdated appointments:");
        printAppointments(sortAppointments(times));
        scanner.close();
    }

    /**
     * Sorts the time objects by utilizing insertion sorting algorithm
     * @param list Array list of Time objects
     * @return Array list of sorted Time objects
     */
    private static ArrayList<Time> sortAppointments(ArrayList<Time> list) {
        for (int i = 0; i < list.size(); i++) {
            Time tmpTime = list.get(i);

            int j = i;
            while (j > 0 && tmpTime.lessThan(list.get(j-1))) {
                list.set(j , list.get(j-1));
                j--;
            }
            list.set(j, tmpTime);
        }
        return list;
    }

    /**
     * Prints all time objects in an array list by foreach statement
     * @param list Array list of Time objects
     */
    private static void printAppointments(ArrayList<Time> list) {
        for (Time time: list) {
            System.out.println(time);
        }
    }
}
