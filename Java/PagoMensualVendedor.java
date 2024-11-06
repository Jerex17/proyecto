
package pago.mensual.vendedor;


 
public class PagoMensualVendedor {

   
    public static void main(String[] args) {
    
        //calcula el pago mensual de un vendedor 
        //variable
     double pago = 9000;
       double comision = 100;
       double comisionventa;
        double ventaequipo = 20750.90;
        double comisionpago;
        double montototal;
        
        //resultado
        comisionventa = (double) ((double) comision + (ventaequipo * 0.02));
        comisionpago = comisionventa * 15;
        montototal = comisionpago +  pago;
        
        System.out.println("tu salario de este mes es de : " + montototal + "RD$" );
        
        
        

        
        
    }
    
}
