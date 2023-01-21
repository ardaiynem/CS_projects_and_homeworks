/**
 * This class is the blueprint for Time objects
 * containing some attributes and methods
 */
public class Time {
    // Instance Variables
    private int hours,
                minutes;

    /**
     * Constructor method for Time object
     * @param hours Hours
     * @param minutes Minutes
     */
    public Time(int hours, int minutes) {
        this.hours = hours;
        this.minutes = minutes;
    }

    /**
     * Add the input limit and formats time to be in right way
     * @param minutes Minutes
     */
    public void addTime(int minutes) {
        this.minutes += minutes;
        hours += this.minutes / 60;
        this.minutes %= 60;
        hours %= 24;
    }

    /**
     * Compares two time objects and returns true if target is greater
     * @param timeTarget Target Time object
     * @return boolean
     */
    public boolean lessThan(Time timeTarget) {
        return hours * 60 + minutes < timeTarget.hours * 60 + timeTarget.minutes;
    }

    @Override
    public String toString() {
        String displayTime;

        displayTime = hours + ":";

        if (displayTime.length() == 2) {
            displayTime = "0" + displayTime;
        }

        if ((displayTime + minutes).length() ==4) {
            displayTime = displayTime + "0" + minutes;
        }
        else {
            displayTime += minutes;
        }

        return displayTime;
    }
}
