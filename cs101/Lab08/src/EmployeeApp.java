/**
 * This program creates a project and employee objects
 * then display and compares the employee objects by using objects' methods
 *
 * @author Arda Iynem
 * @version 1.0 15.04.2021
 */
public class EmployeeApp {
    // Project and Employee Objects
    static Project project = new Project("SunMarkets POS Implementation",
                        315, 320, 22);
    static Employee empFirst = new Employee("Karakus, Zana", 215,
                            "SunMarkets POS Implementation", "Information Technology", "IT"),
                    empSecond = new Employee("Rocca, Denis", 175,
                            "SunMarkets POS Implementation", "Human Resources", "HR"),
                    empThird = new Employee("Anders, Jamie", 275,
                            "SunMarkets POS Implementation",  "Human Resources", "HR"),
                    empFourth = new Employee(empFirst);

    // Variables
    static int countMatch = 0;

    public static void main(String[] args) {
        System.out.println("Employees:\n");
        displayEmployee(empFirst);
        displayEmployee(empSecond);
        displayEmployee(empThird);
        displayEmployee(empFourth);
        System.out.println("---------end employee list ----------");

        compareDept(empFirst, empSecond);
        compareDept(empFirst, empThird);
        compareDept(empFirst, empFourth);
        compareDept(empSecond, empThird);
        compareDept(empSecond, empFourth);
        compareDept(empThird, empFourth);
    }

    /**
     * Calls and prints toString method of Employee and Project objects in order
     * @param employee Employee object
     */
    public static void displayEmployee(Employee employee) {
        System.out.print(employee.toString());
        System.out.println(project.toString());
    }

    /**
     * Compares the Employee objects' departments with each other by Department objects' equals method
     * Then prints the matching count and employee objects by displayEmployee method
     * @param empFirst Employee object to be compared
     * @param empSecond Employee object to be compared
     */
    private static void compareDept(Employee empFirst, Employee empSecond) {
        /*
        ArrayList<Employee> deptList = new ArrayList<>(4);
        int matchCount;
        deptList.add(firstEmp);
        deptList.add(secondEmp);
        deptList.add(thirdEmp);
        deptList.add(fourthEmp);

        matchCount = 0;
        for (int mainIndex = 0; mainIndex < 4; mainIndex++) {
            for (int targetIndex = 3; targetIndex > mainIndex; targetIndex-- ) {
                if(deptList.get(mainIndex).department.equals(deptList.get(targetIndex).department)) {
                    matchCount++;

                    System.out.println("_____________________\nEmployees with Matching Departments (" + matchCount + ")\n");
                    displayEmployee(deptList.get(mainIndex));
                    displayEmployee(deptList.get(targetIndex));
                }
            }
        }
         */
        if(empFirst.department.equals(empSecond.department)) {
            countMatch++;
            System.out.println("_____________________\nEmployees with Matching Departments (" + countMatch + ")\n");
            displayEmployee(empFirst);
            displayEmployee(empSecond);
        }
    }
}
