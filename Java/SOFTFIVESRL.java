
package softfive.srl;

public class SOFTFIVESRL {

    public static void main(String[] args) {
        
        //variable
        double valor = 275730.00;
        double descuento = 0.2;
        double Rdescuento = 55146;
        double total ;
        
        System.out.println("El valor de la compra es = " +valor);
        System.out.println("Con un descuento del 20% igual a = " + (valor*descuento));
       
        total = (valor-Rdescuento);
        System.out.println("monto a pagar es igual a " + total);
      
    }
    
}
