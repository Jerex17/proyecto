import java.util.Scanner;

public class Fahrenheitacelsius {

 
    public static void main(String[] args) {
     
        /*Fahrenheit a celsius
        jeremias pincel #26
        29/9/2023*/

        
        Scanner esta = new Scanner(System.in);
        System.out.println("esta es un ejemplo");
        
        float Fahrenheit;
        float Celsius;
        
        Fahrenheit  = esta.nextInt();
        Celsius = (float) ((Fahrenheit - 32) /  1.8);
        System.out.println("Celsius = " + Celsius);
        
    }
    
}
