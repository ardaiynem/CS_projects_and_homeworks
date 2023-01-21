/**
 * This class is the blueprint for Employee objects
 */
public class Employee {
    //Constants
    static final int WORKING_DAYS = 261;

    // Instance Variables
    String employeeName,
           project;
    double dailyRate;
    Department department;

    // Constructors
    /**
     * Initializes the Employee object variables by mutator methods
     * @param employeeName Name of employee
     * @param dailyRate Daily pay rate of the employee
     * @param project Project the employee was assigned
     * @param deptName Department name
     * @param deptCode Department code
     */
    public Employee(String employeeName, double dailyRate, String project, String deptName, String deptCode) {
        setEmployeeName(employeeName);
        setDailyRate(dailyRate);
        setProject(project);
        setDepartment(deptName, deptCode);
    }

    /**
     * Copies an Employee object's properties to create a new one
     * @param employee Employee object
     */
    public Employee(Employee employee) {
        setEmployeeName(employee.employeeName);
        setDailyRate(employee.dailyRate);
        setProject(employee.project);
        setDepartment(employee.department.getDeptName(), employee.department.getDeptCode());
    }

    // Accessor Methods
    /**
     * Accessor method
     * @return Name of employee
     */
    public String getEmployeeName() {
        return employeeName;
    }

    /**
     * Accessor method
     * @return Daily pay rate of the employee
     */
    public double getDailyRate() {
        return dailyRate;
    }

    /**
     * Accessor method
     * @return Department name
     */
    public String getDepartment() {
        return department.toString();
    }

    /**
     * Accessor method
     * @return Project the employee was assigned
     */
    public String getProject() {
        return project;
    }

    // Mutator Methods
    /**
     * Mutator method
     * @param employeeName Name of employee
     */
    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    /**
     * Mutator method
     * @param dailyRate Daily pay rate of the employee
     */
    public void setDailyRate(double dailyRate) {
        this.dailyRate = dailyRate;
    }

    /**
     * Mutator method
     * @param deptName Department name
     * @param deptCode Department code
     */
    public void setDepartment(String deptName, String deptCode) {
        department = new Department(deptName, deptCode);
    }

    /**
     * Mutator method
     * @param project Project the employee was assigned
     */
    public void setProject(String project) {
        this.project = project;
    }

    /**
     * Calculates and returns yearly salary
     * @return Yearly salary of an employee
     */
    public double calculateYearlySalary() {
        return dailyRate * WORKING_DAYS;
    }

    @Override
    public String toString() {
        String display;
        display = "Employee Name: " + employeeName + " Yearly Salary: " + calculateYearlySalary()
                + "\n" + department.toString();

        return display;
    }
}
