import java.util.ArrayList;
import java.util.Scanner;

/**
 * Model Selector
 *
 * This program includes an ArrayList filled with Model object that is initialized with user inputs.
 * With the functionalities in the program user can add new models, display all models with all attributes,
 * specific attributes and user can set each attribute to a new value. Also with the sort method user can
 * sort all models through an attribute they choose.
 *
 * @author Arda Iynem
 * @version 1.00 08.05.2021
 */
public class SelectorApp {
    // Static Variables
    static ArrayList<Model> modelsList = new ArrayList<Model>();
    static Scanner scanner = new Scanner(System.in);

    /**
     * Main method calls helper methods in a while loop. It is controlled or terminated through user inputs.
     * @param args args
     */
    public static void main(String[] args) {
        // Variables
        String menu;
        int choice;
        boolean isRepeat;

        // String of the menu to be displayed. "-" Is used as delimiter for scanner.
        menu = "Add new model-Print all models-Get model's attributes" +
                "-Set model's attributes-Sort model's attributes-Exit program";

        /* If user chose an functionality requiring model object while there isn't added any yet,
           display an error and repeat the menu. If user chooses to exit terminate the loop.
         */
        isRepeat = true;
        do {
            // Display menu and get the user choice
            choice = menuChoice(menu);

            if (choice == 6) {
                isRepeat = false;
            }
            else if (choice == 1) {
                addModel();
            }
            else {
                if (!modelsList.isEmpty()) {
                    if (choice == 2) {
                        printModels();
                    } else if (choice == 3) {
                        getAttribute();
                    } else if (choice == 4) {
                        setAttribute();
                    } else {
                        sortModels();
                    }
                }
                else {
                    System.out.println("There isn't any model added to list yet!");
                }
            }
        } while (isRepeat);

    }

    /**
     * This method asks user to input values to initialize a new model object. Having taken the name and surname values,
     * existing models' names are compared with the input to determine if a model with same name already exists. If not,
     * model with the input name is initialized and added  to modelsList.
     */
    private static void addModel() {
        // Variables
        Model model;
        int age;
        char gender;
        double weight,
               height;
        String name,
               surname;

        scanner.nextLine();
        System.out.print("Enter name input: ");
        name = scanner.nextLine();
        System.out.print("Enter surname input: ");
        surname = scanner.next();

        // Check whether a model with this name exists or not
        if (findModel(name + " " + surname) != null) {
            System.out.println("A model with this name is already exist!");
            return;
        }

        System.out.print("Enter age input: ");
        age = scanner.nextInt();
        System.out.print("Enter gender input (m/f): ");
        gender = scanner.next().charAt(0);

        // Ask user to input gender in correct form until they do
        while (gender != 'm' && gender != 'f') {
            System.out.print("Wrong gender input!\nEnter gender input (m/f): ");
            gender = scanner.next().charAt(0);
        }

        System.out.print("Enter weight(kg) input: ");
        weight = scanner.nextDouble();
        System.out.print("Enter height(cm) input: ");
        height = scanner.nextDouble();

        // Initialize model object with the user inputs and add the model to the list
        model = new Model(name, surname, age, gender, weight, height);
        modelsList.add(model);
        System.out.println(model.getName() + " " + model.getSurname() + " is  added to list.\n");
    }

    /**
     * This method prints all the model objects and their attributes in the modelsList
     */
    private static void printModels() {
        // Variables
        int counter;

        // Print all elements of modelsList with a foreach loop
        counter = 1;
        for (Model model: modelsList) {
            System.out.println(counter + "- " + model + " ==> " + "Age: " + model.getAge() + " Gender: "
                    + model.getGender() + " Weight(kg): " + model.getWeight() + " Height(cm): " + model.getHeight()
                    + " Body Mass Index: " + model.getBmi() + " Fat Percentage: %" + model.getFatPer()
                    + " Fat Type: " + model.getFatType());
            counter++;
        }
    }

    /**
     * This method first finds the model object by the name according to user input. Then if a model has been found
     * displays a menu of attributes to user to choose. Then displays the value of attribute that user chose.
     */
    private static void getAttribute() {
        // Variables
        String menu,
               modelName;
        Model model;
        int choice;

        // This method will return null if model with input name does not exist.
        scanner.nextLine();
        System.out.println("Enter name and surname input");
        modelName = scanner.nextLine();
        model = findModel(modelName);

        if (model == null) {
            System.out.println("Wrong model name!");
            return;
        }


        // String of the menu to be displayed. "-" Is used as delimiter for scanner.
        menu = "Age-Gender-Weight and Height-Body Mass Index-Fat Percentage and Fat Type-All Attributes";

        // Display menu and get the user choice
        choice = menuChoice(menu);

        // Display the sought attribute according to the choice
        System.out.print(modelName + " ==> ");
        if (choice == 1) {
            System.out.println("Age: " + model.getAge());
        }
        else if (choice == 2){
            System.out.println("Gender: " + model.getGender());
        }
        else if (choice == 3){
            System.out.println("Weight(kg): " + model.getWeight() + " Height(cm): " + model.getHeight());
        }
        else if (choice == 4){
            System.out.println("Body Mass Index: " + model.getBmi());
        }
        else if (choice == 5){
            System.out.println("Fat Percentage: %" + model.getFatPer() + " Fat Type: " + model.getFatType());
        }
        else {
            System.out.println("Age: " + model.getAge() + " Gender: "+ model.getGender() + " Weight(kg): " +
                    model.getWeight() + " Height(cm): " + model.getHeight() + "\nBody Mass Index: " +
                    model.getBmi() + " Fat Percentage: %" + model.getFatPer() + " Fat Type: " + model.getFatType());
        }
    }

    /**
     * This method first finds the model object by the name according to user input. Then if a model has been found
     * displays a menu of attributes to user to choose. Then asks user the new value to set and sets the input.
     */
    private static void setAttribute() {
        // Variables
        String menu,
               modelName;
        Model model;
        int choice;

        // This method will return null if model with input name does not exist.
        scanner.nextLine();
        System.out.println("Enter name and surname input");
        modelName = scanner.nextLine();
        model = findModel(modelName);

        if (model == null) {
            System.out.println("Wrong model name!");
            return;
        }

        // String of the menu to be displayed. "-" Is used as delimiter for scanner.
        menu = "Age-Gender-Weight-Height-Name-Surname";

        // Display menu and get the user choice
        choice = menuChoice(menu);

        // Set the attribute chosen by the user to a new value
        if (choice == 1) {
            System.out.println("Enter an age input to set instead of " + model.getAge() + " : ");
            model.setAge(scanner.nextInt());
            System.out.println(modelName + " ==> Age is set to: " + model.getAge());
        }
        else if (choice == 2){
            System.out.println("Enter a gender input (m/f) to set instead of " + model.getGender() + " : ");
            model.setGender(scanner.next().charAt(0));

            while (model.getGender().equals("Male") && model.getGender().equals("Female")) {
                System.out.print("Wrong gender input!\nEnter gender input (m/f): ");
                model.setGender(scanner.next().charAt(0));
            }

            System.out.println(modelName + " ==> Gender is set to: " + model.getGender());
        }
        else if (choice == 3){
            System.out.println("Enter a weight(kg) input to set instead of " + model.getWeight() + " : ");
            model.setWeight(scanner.nextDouble());
            System.out.println(modelName + " ==> Weight is set to: " + model.getWeight());
        }
        else if (choice == 4){
            System.out.println("Enter a height(cm) input to set instead of " + model.getHeight() + " : ");
            model.setHeight(scanner.nextDouble());
            System.out.println(modelName + " ==> Height is set to: " + model.getHeight());
        }
        else if (choice == 5){
            scanner.nextLine();
            System.out.println("Enter a name input to set instead of " + model.getName() + " : ");
            model.setName(scanner.nextLine());
            System.out.println(modelName + " ==> Name is set to: " + model.getName());
        }
        else {
            System.out.println("Enter a surname input to set instead of " + model.getSurname() + " : ");
            model.setSurname(scanner.next());
            System.out.println(modelName + " ==> Surname is set to: " + model.getSurname());
        }

        // Update the variables related to height, weight,age and gender when on them is changed.
        if (choice <= 4) {
            model.setBmi();
            model.setFatPer();
            model.setFatType();
        }
    }

    /**
     * This method first displays a menu of attributes to be sorted. Then sorts the selected attributes of
     * all models in the modelsList. Then displays the sorted attributes beside of the models' name
     */
    private static void sortModels() {
        // Variables
        int choice;
        String menu;

        // String of the menu to be displayed. "-" Is used as delimiter for scanner.
        menu = "Age-Weight-Height-Body Mass Index-Fat Percentage";

        // Display menu and get the user choice
        choice = menuChoice(menu);

        // Initialize 2 array objects with the same size of modelsList to sort attributes and  model's name.
        double[] sortedList = new double[modelsList.size()];
        String[] sortedName = new String[modelsList.size()];

        // Fill the sortedName array with modelsList's objects methods to get names
        for (int i = 0; i < sortedName.length; i++) {
            sortedName[i] = modelsList.get(i).getName() + " " + modelsList.get(i).getSurname();
        }

        // Fill the sortedList array with modelsList's objects methods to get chosen attribute
        if (choice == 1) {
            for (int i = 0; i < sortedList.length; i++) {
                sortedList[i] = modelsList.get(i).getAge();
            }
        }
        else if (choice == 2) {
            for (int i = 0; i < sortedList.length; i++) {
                sortedList[i] = modelsList.get(i).getWeight();
            }
        }
        else if (choice == 3) {
            for (int i = 0; i < sortedList.length; i++) {
                sortedList[i] = modelsList.get(i).getHeight();
            }
        }
        else if (choice == 4) {
            for (int i = 0; i < sortedList.length; i++) {
                sortedList[i] = modelsList.get(i).getBmi();
            }
        }
        else {
            for (int i = 0; i < sortedList.length; i++) {
                sortedList[i] = modelsList.get(i).getFatPer();
            }
        }

        // Sort sortedList array with the insertion sort algorithm while sorting sortedName meantime.
        for (int j = 1; j < sortedList.length; j++) {
            double tmpValue = sortedList[j];
            String tmpName = sortedName[j];

            int k = j - 1;
            while (k >= 0 && sortedList[k] > tmpValue) {
                sortedList[k + 1] = sortedList[k];
                sortedName[k + 1] = sortedName[k];
                k--;
            }

            sortedList[k + 1] = tmpValue;
            sortedName[k + 1] = tmpName;
        }

        System.out.println("Sorted list of selected attribute is:");

        // Print out both sorted lists together so that names and attributes will be matched for each line.
        for (int i = 0; i < sortedList.length; i++) {
            System.out.println(sortedName[i] + " (" + (i + 1) +") " + sortedList[i]);
        }
    }

    /**
     * This method takes a String to be displayed as menu and forces use to choose
     * a choice with an integer in the boundaries of choice amount.
     *
     * @param menu String of the menu choices
     * @return int representation of the choice
     */
    private static int menuChoice(String menu) {
        // Variables
        int choice,
            end;
        Scanner scMenu = new Scanner(menu);
        scMenu.useDelimiter("-");

        // Print out the menu string line by line. Increase end variable each time to determine boundaries
        end = 0;
        System.out.println("-----------------");
        while (scMenu.hasNext()) {
            end++;
            System.out.println(end + "- " + scMenu.next());
        }
        System.out.println("-----------------");

        // Ask user to input a value until it is within the boundaries
        boolean isDone = false;
        do {
            if (scanner.hasNextInt()) {
                choice = scanner.nextInt();
                if (choice >= 1 && choice <= end) {
                    isDone = true;
                }
                else {
                    System.out.println("Input is out of boundaries!");
                }
            }
            else {
                System.out.println("Wrong type of input!");
                scanner.next();
                choice = -1;
            }

        }
        while (!isDone);

        return choice;
    }

    /**
     * This methods checks whether input of user matches with any model object's name in the modelsList
     *
     * @param modelName Input of the user which is to be compared with name of model objects in the modelsList
     * @return Model object with the matched name, if there isn't any match returns null Model object
     */
    private static Model findModel(String modelName) {
        // Variables
        Model model;

        // Compare model's toString method outputs with the input name and set it something else than null if matches.
        model = null;
        for (Model tmpModel: modelsList) {
            if (tmpModel.toString().equals(modelName)) {
                model = tmpModel;
            }
        }

        return model;
    }
}
