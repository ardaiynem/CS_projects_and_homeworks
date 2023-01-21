/**
 * This class compares department several object with equals method and equality operators
 */
public class DepartmentTest {
    public static void main(String[] args) {
        Department deptFirst = new Department("First", "32"),
                   deptSecond = deptFirst,
                   deptThird = new Department("Third", "46"),
                   deptFourth = new Department("Fourth", "76"),
                   deptFifth = new Department("Fifth", "84"),
                   deptSixth = new Department("Fifth", "84");

        System.out.println(deptFirst.equals(deptSecond));
        System.out.println(deptFirst == deptSecond);
        System.out.println(deptThird.equals(deptFourth));
        System.out.println(deptThird == deptFourth);
        System.out.println(deptFifth.equals(deptSixth));
        System.out.println(deptFifth == deptSixth);
    }
}
