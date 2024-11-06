<?php
error_reporting(0);
include("./conexion/db.php");
$correo=$_POST['correo'];
$clave=$_POST['clave'];

$_SESSION['nombre']=$correo;


$consulta="SELECT*FROM usuario WHERE correo='$correo' and clave='$clave'";
$resultado=mysqli_query($conn,$consulta);

$filas=mysqli_fetch_array($resultado);

if($filas['id_cargo']==1){//administrador
    header("location:http://cepva.edu.do");

}else
    if($filas['id_cargo']==2){//cliente
        header("location:http://cepva.edu.do");
}

else{
    ?> 
    <?php
    ?>
    <h1 class="bad">DATOS INCORRECTOS</h1>
    <?php
}
mysqli_free_result($resultado);
mysqli_close($conn);

