public class FinalObj {
    // Variables
    public static int year = 2000;
    private String name;
    private int age;

    public FinalObj(String name, int age) {
        setName(name);
        setAge(age);
        year++;
    }

    // Accessor
    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    // Mutator
    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String toString() {
        return getName() + " " + getAge() + " " + year;
    }

    public boolean equals(Object obj) {
        if (obj instanceof FinalObj){
            FinalObj tmpFnl = (FinalObj) obj;

            return tmpFnl.getName().equals(this.getName()) && tmpFnl.getAge() == this.getAge();
        }
        return false;
    }
}
