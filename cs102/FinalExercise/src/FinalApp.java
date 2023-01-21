import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class FinalApp {
    public static void main(String[] args) {
        Scanner  in = new Scanner(System.in);
        ArrayList<String> list= new ArrayList<>();
        int[] nlist = new int[10];
        //System.out.println(search(43));
        //remove(say(),2);
        //insert(say(), 2, 34);
        //System.out.printf("%%%4d %s %.3f %n bombabomba.com xD ", 27, "yarrbow", 0.3189);
        //System.out.println(Character.isDigit("dasda".charAt(0)));
        //charAt indexOf substring length

        System.out.println(list);
        list.add("derdero");
        //list.size();
        //list.get(0);
        //list.indexOf("yappar"); -1 if not exists
        //list.lastIndexOf("yappar");
        //list.contains("yappar");
        //list.set(1, "yappar");
        //int[] kekomento = Arrays.copyOf(nlist,23);

        //int[][] tdlist = new int[3][2];
        //Arrays.toString()


    }

    public static void remove(int[] list, int pos) {
        int currentSize = list.length;

        for (int i = pos; i + 1 < currentSize; i++) {
           list[i] = list[i + 1];
         }
         list[currentSize - 1] = 0;

       for (int a : list) {
         System.out.print(a + ", ");
        }
    }

    public static void insert(int[] list, int pos, int e) {
        int currentSize = list.length;

        for (int i = currentSize - 1; i > pos; i--) {
            list[i] = list[i - 1];
        }
        list[pos] = e;

        for (int a : list) {
            System.out.print(a + ", ");
        }
    }

    public static int search(int flag) {
        int[] list = say();

        int min = 0;
        int max = list.length - 1;
        int guess;

        guess = 0;
        while (min <= max) {
            guess = (min + max) / 2;
            if (list[guess] < flag) {
                min = guess + 1;
            }
            else if (list[guess] > flag) {
                max = guess - 1;
            }
            else {
                return guess;
            }
        }

        return -1;
    }

    public static int[] say() {
        int[] list = {54,12,43,756,21,123,89,64};

        for (int a : list) {
            System.out.print(a + ", ");
        }
        System.out.println();

        int i = 1;
        while (i < list.length) {

            int j;
            int tmp = list[i];
            j = i - 1;
            while (j >= 0 && list[j] > tmp) {
                list[j + 1] = list[j];
                j--;
            }

            list[j + 1] = tmp;
            i++;
        }

        for (int a : list) {
            System.out.print(a + ", ");
        }

        System.out.println();
        return list;
    }
}
