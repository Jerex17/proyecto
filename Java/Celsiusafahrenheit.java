
import java.util.Scanner;

public class Celsiusafahrenheit {

 
    public static void main(String[] args) {
     
        /*celsius a fahrenheit
        jeremias pincel #26
        29/9/2023*/

        
        Scanner esta = new Scanner(System.in);
        System.out.println("esta es un ejemplo");
        
        float celsius;
        float fahrenheit;
        
        celsius  = esta.nextInt();
        fahrenheit = (float) ((celsius * 1.8) + 32);
        System.out.println("fahrenheit = " + fahrenheit);
        
    }
    
}
