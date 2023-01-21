/**
 * This program creates project objects from Project class
 * and display, compares and modifies these project objects.
 *
 * @author Arda Iynem
 * @version 1.0 08.04.2021
 */
public class ProjectApp {
    // Project Objects
    static Project projectFirst = new Project("ArcTech Business Solution", 11520, 215, 48),
                   projectSecond = new Project("SunMarkets POS Implementation", 315, 320, 22),
                   projectThird = new Project("HealthTech Hospital", 0, 0, 0);

    public static void main(String[] args) {
        displayProjects();
        compareProjects();

        projectFirst.setProjectWeeks(78);
        projectFirst.setRatePerHour(4);
        projectFirst.setProjectType();
        projectSecond.deactivateProject();

        displayProjects();
    }

    /**
     * Compares all three project objects costs and prints the project with greatest cost
     */
    public static void compareProjects() {
        System.out.print("Project with greater cost:");
        // 1 = Target project costs more, 0 = Projects costs are equal, -1 = Target project costs less
        if (projectFirst.compareProjects(projectSecond) == -1) {
            if (projectFirst.compareProjects(projectThird) == -1) {
                System.out.println(projectFirst);
            }
            else {
                System.out.println(projectThird);
            }
        }
        else {
            if (projectSecond.compareProjects(projectThird) == -1) {
                System.out.println(projectSecond);
            }
            else {
                System.out.println(projectThird);
            }
        }
    }

    /**
     * Prints all the project objects
     */
    public static void displayProjects() {
        System.out.println(projectFirst);
        System.out.println(projectSecond);
        System.out.println(projectThird);
        System.out.println();
    }
}
