/**
 * This class is the blueprint for department objects
 */
public class Department {
    // Instance Variables
    String deptName,
           deptCode;

    /**
     * Initializes the department name and department code using the ones passed as parameters
     * @param deptName Department name
     * @param deptCode Department code
     */
    public Department(String deptName, String deptCode) {
        setDeptName(deptName);
        setDeptCode(deptCode);
    }

    // Accessor Methods
    /**
     * Accessor method
     * @return Department name
     */
    public String getDeptName() {
        return deptName;
    }

    /**
     * Accessor method
     * @return Department code
     */
    public String getDeptCode() {
        return deptCode;
    }

    // Mutator Methods
    /**
     * Mutator method
     * @param deptName Department name
     */
    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    /**
     * Mutator method
     * @param deptCode Department code
     */
    public void setDeptCode(String deptCode) {
        this.deptCode = deptCode;
    }

    @Override
    public boolean equals(Object object) {
        Department targetDept = (Department) object;

        return deptName.equals(targetDept.deptName) && deptCode.equals(targetDept.deptCode);
    }

    @Override
    public String toString() {
        return "DeptName: " + deptName + " Dept Code: " + deptCode;
    }
}
