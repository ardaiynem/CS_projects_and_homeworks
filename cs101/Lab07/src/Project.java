import java.util.Calendar;

/**
 * This class is the blueprint for Project object with constructor, accessor, mutator and service methods.
 */
public class Project {
    // Constants
    private static final double TAX = 0.13;
    private static final int OVERHEAD = 50000,
                             EMP_HOURS_WEEK = 45;

    // Static Variables
    private static int projectCounter = 5000;

    // Instance Variables
    private String projectId,
                   projectName;
    private Character projectType;
    private double personHours,
                   ratePerHour;
    private int projectWeeks;

    /**
     * Constructor method. Sets all variables from the inputs.
     * @param projectName Name of the project.
     * @param personHours Estimated person hours for the project
     * @param ratePerHour Standard rate per person hour
     * @param projectWeeks Estimated duration of the project in weeks
     */
    public Project(String projectName, double personHours, double ratePerHour, int projectWeeks) {
        this.projectName = projectName;
        setProjectId();
        setPersonHours(personHours);
        setRatePerHour(ratePerHour);
        setProjectWeeks(projectWeeks);
        setProjectType();
    }

    // Accessor Methods
    public String getProjectName() {
        return projectName;
    }
    public String getProjectId() {
        return projectId;
    }
    public Character getProjectType() {
        return projectType;
    }
    public double getPersonHours() {
        return personHours;
    }
    public double getRatePerHour() {
        return ratePerHour;
    }
    public int getProjectWeeks() {
        return projectWeeks;
    }

    // Mutator Methods
    /**
     * Sets the project name to the input value
     * @param inputValue New name of the project
     */
    public void setProjectName(String inputValue) {
        projectName = inputValue;
    }

    /**
     * Sets the person hours to the input value. Assigns to 0 if input value is negative
     * @param inputValue New estimated person hours for the project
     */
    public void setPersonHours(double inputValue) {
        if (inputValue > 0) {
            personHours = inputValue;
        }
        else {
            personHours = 0;
        }
    }

    /**
     * Sets the rate per hour to the input value. Assigns to 0 if input value is negative
     * @param inputValue New standard rate per person hour
     */
    public void setRatePerHour(double inputValue) {
        if (inputValue > 0) {
            ratePerHour = inputValue;
        }
        else {
            ratePerHour = 0;
        }
    }

    /**
     * Sets the project weeks to the input value. Assigns to 0 if input value is negative
     * @param inputValue New estimated duration of the project in weeks
     */
    public void setProjectWeeks(int inputValue) {
        if (inputValue > 0) {
            projectWeeks = inputValue;
        }
        else {
            projectWeeks = 0;
        }
    }

    /**
     * Sets the project id by using Calendar class and projectCounter variable
     */
    private void setProjectId() {
        projectCounter++;
        int year = Calendar.getInstance().get(Calendar.YEAR);
        projectId = year + "-" + projectCounter;
    }

    /**
     * Sets the project type according to cost of the project
     */
    public void setProjectType() {
        double projectCost = calculateProjectCost();

        if (projectCost > 1000000) {
            projectType = 'm';
        }
        else if (projectCost <= 1000000 && projectCost >= 500000) {
            projectType = 'l';
        }
        else if (projectCost < 500000 && projectCost > 0) {
            projectType = 's';
        }
        else {
            projectType = 'i';
        }
    }

    // Service Methods
    /**
     * Sets personHours and ratePerHour to 0 and sets project type again thus projects becomes deactivated
     */
    public void deactivateProject() {
        personHours = 0;
        ratePerHour = 0;
        setProjectType();
    }

    /**
     * Sets personHours and ratePerHour to the inputValue and sets project type again thus projects becomes activated
     * @param personHours New estimated person hours for the project
     * @param ratePerHour New standard rate per person hour
     */
    public void activateProject(double personHours, double ratePerHour) {
        if (projectType == 'i') {
            setPersonHours(personHours);
            setRatePerHour(ratePerHour);
            setProjectType();
        }
        else {
            System.out.println("Project is already activated");
        }
    }

    /**
     * Calculates the projects cost according to a formula
     * @return Calculation
     */
    public double calculateProjectCost() {
        double calculation;
        calculation = Math.round((personHours * ratePerHour) * (1 + TAX));

        // If calculation is less than 20000, return immediately else add overhead
        if (calculation < 20000) {
            return  calculation;
        }

        return Math.round(calculation + OVERHEAD * (1 + TAX));
    }

    /**
     * Calculates how many person is required by dividing total work hour to an employees work hour.
     * @return Integer division of the calculation
     */
    public int calculatePersonResources() {
        return (int)Math.ceil(personHours / (projectWeeks * EMP_HOURS_WEEK));
    }

    /**
     * Compares a target projects cost to this projects cost
     * @param project Target project object
     * @return 1,0 or -1 according to the comparison
     */
    public int compareProjects(Project project) {
        if (project.calculateProjectCost() > calculateProjectCost()) {
            return 1;
        }
        else if (project.calculateProjectCost() == calculateProjectCost()) {
            return 0;
        }
        else {
            return -1;
        }
    }

    @Override
    public String toString() {
        String displayProject;

        displayProject = "\nProject Name: " + getProjectName()
                       + "\nProject ID: " + getProjectId();

        if (projectType.equals('i')) {
            displayProject = "\n-------INACTIVE PROJECT------" + displayProject;
            return displayProject;
        }

        displayProject += "\nProject Type: " + getProjectType()
                        + "\nTeam Size: " + calculatePersonResources()
                        + "\nEstimated Project Cost: " + calculateProjectCost();

        return displayProject;
    }

}
