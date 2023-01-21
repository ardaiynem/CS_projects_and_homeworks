/**
 * This class is blueprint of Model object. Model object includes many attributes related to human body.
 * Also includes accessor and mutator and an overridden toString method to be used easily by coders.
 *
 * @author Arda Iynem
 * @version 1.00 08.05.2021
 */
public class Model {
    // Instance Variables
    private int age;
    private char gender;
    private double weight,
                   height,
                   bmi,
                   fatPer;
    private String fatType,
                   name,
                   surname;

    /**
     *  Initializes model with the input values then sets other attributes related to these inputs.
     *
     * @param name Name of model
     * @param surname Surname of model
     * @param age Age of model
     * @param gender Gender of model
     * @param weight Weight of model
     * @param height Height of model
     */
    public Model (String name, String surname, int age, char gender, double weight, double height) {
        setName(name);
        setSurname(surname);
        setAge(age);
        setGender(gender);
        setWeight(weight);
        setHeight(height);
        setBmi();
        setFatPer();
        setFatType();
    }

    // Accessor Methods

    /**
     * Accessor method for model's age
     * @return Age
     */
    public int getAge() {
        return age;
    }

    /**
     * Accessor method for model's gender. Returns "None" if  gender was input in wrong format.
     * @return Gender
     */
    public String getGender() {
        String gender;

        if (this.gender == 'm') {
            gender = "Male";
        }
        else if (this.gender == 'f') {
            gender = "Female";
        }
        else {
            gender = "None";
        }

        return gender;
    }

    /**
     * Accessor method for model's weight
     * @return Weight
     */
    public double getWeight() {
        return weight;
    }

    /**
     * Accessor method for model's height
     * @return Height
     */
    public double getHeight() {
        return height;
    }

    /**
     * Accessor method for model's body mass index. Returns rounded to 2 decimal places value
     * @return Body mass index
     */
    public double getBmi() {
        double bmi;

        // Round to 2 decimal places
        bmi = Math.round(this.bmi * 100) / 100.0;
        return bmi;
    }

    /**
     * Accessor method for model's  fat percentage. Returns rounded to 2 decimal places value
     * @return Fat percentage
     */
    public double getFatPer() {
        double fatPer;

        // Round to 2 decimal places
        fatPer = Math.round(this.fatPer * 100) / 100.0;
        return fatPer;
    }

    /**
     * Accessor method for model's fat type
     * @return Fat type
     */
    public String getFatType() {
        return fatType;
    }

    /**
     * Accessor method for model's name
     * @return Name
     */
    public String getName() {
        return name;
    }

    /**
     * Accessor method for model's surname
     * @return Surname
     */
    public String getSurname() {
        return surname;
    }

    // Mutator Methods

    /**
     * Mutator method for model's age. Sets to a default value if input is out of boundaries
     * @param age Age input
     */
    public void setAge(int age) {
        // Set to a default value if input is out of boundaries
        if (age >= 18 && age <= 80) {
            this.age = age;
        }
        else {
            this.age = 18;
            System.out.println("Due to age input out of boundaries (18-80), age is automatically set to "
                    + this.age);
        }
    }

    /**
     * Mutator method for model's gender
     * @param gender Gender input
     */
    public void setGender(char gender) {
        this.gender = gender;
    }

    /**
     * Mutator method for model's weight. Sets to a default value if input is out of boundaries
     * @param weight Weight input
     */
    public void setWeight(double weight) {
        // Set to a default value if input is out of boundaries
        if (weight >= 21 && weight <= 200) {
            this.weight = weight;
        }
        else {
            this.weight = 50;
            System.out.println("Due to weight input out of boundaries (22-200), " + "weight is automatically set to "
                    + this.weight);
        }
    }

    /**
     * Mutator method for model's height. Sets to a default value if input is out of boundaries
     * @param height Height input
     */
    public void setHeight(double height) {
        // Set to a default value if input is out of boundaries
        if (height >= 121 && height <= 240) {
            this.height = height;
        }
        else {
            this.height = 150;
            System.out.println("Due to height input out of boundaries (121-240), height is automatically set to " +
                    this.height);
        }
    }

    /**
     * Mutator method for model's body mass index
     */
    public void setBmi() {
        // Calculate body mass index according to bmi calculation formula
        bmi = weight / (height / 100 * height / 100);
    }

    /**
     * Mutator method for model's fat percentage
     */
    public void setFatPer() {
        int genderValue;

        // Calculate the fat percentage according to fat percentage calculation formula
        if (gender == 'm') {
            genderValue = 0;
        }
        else {
            genderValue = 1;
        }

        fatPer = -44.988 + (0.503 * age) + (10.689 * genderValue) + (3.172 * bmi)
                - (0.026 * bmi * bmi) + (0.181 * bmi * genderValue) - (0.02 * bmi * age)
                - (0.005 * bmi * bmi * genderValue) + (0.00021 * bmi * bmi * age);
    }

    /**
     * Mutator method for model's fat type
     */
    public void setFatType() {
        // Determine model's fat type according to their fat percentage and gender
        if (gender == 'm') {
            if (fatPer >= 2 && fatPer < 6) {
                fatType = "Essential fat";
            }
            else if (fatPer >= 6 && fatPer < 14) {
                fatType = "Athletes";
            }
            else if (fatPer >= 14 && fatPer < 18) {
                fatType = "Fitness";
            }
            else if (fatPer >= 18 && fatPer < 25) {
                fatType = "Average";
            }
            else if (fatPer >= 25) {
                fatType = "Obese";
            }
            else {
                fatType = "Invalid Fat Type";
            }
        }
        else {
            if (fatPer >= 10 && fatPer < 14) {
                fatType = "Essential fat";
            }
            else if (fatPer >= 14 && fatPer < 21) {
                fatType = "Athletes";
            }
            else if (fatPer >= 21 && fatPer < 25) {
                fatType = "Fitness";
            }
            else if (fatPer >= 25 && fatPer < 32) {
                fatType = "Average";
            }
            else if (fatPer >= 32) {
                fatType = "Obese";
            }
            else {
                fatType = "Invalid Fat Type";
            }
        }
    }

    /**
     * Mutator method for model's name
     * @param name Name input
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Mutator method for model's surname
     * @param surname Surname input
     */
    public void setSurname(String surname) {
        this.surname = surname;
    }

    /**
     * This method overrides toString to display name and surname of
     * model instead of the reference address of the model object
     * @return Name and surname of the model with a space between them
     */
    @Override
    public String toString() {
        return name + " " + surname;
    }
}
