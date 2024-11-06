package sumatoriacalificaciones4;


public class Sumatoriacalificaciones4 {

    
    public static void main(String[] args) {
        
       /*
        Elabora programa que calcule e imprima la sumatoria de 4 calificaciones de un alumno.
        (4.25, 3.80,  5, 8)
        Jeremias pincel
        Fecha:27/9/2023
        */
       
       //VARIABLE PARA CALCULO DE CALIFICACIONES.
      int nota1 = 4;
      int nota2 = 3;
      int nota3 = 5;
      int nota4 = 8;
      int sumatoria;
      
      //Calculo de las 4 notas.
      
      sumatoria = (nota1+nota2+nota3+nota4)  / 4; 
      System.out.println("El promedio de la sumatoria es : " + (sumatoria + 3 ) );
      
         }
    
}

