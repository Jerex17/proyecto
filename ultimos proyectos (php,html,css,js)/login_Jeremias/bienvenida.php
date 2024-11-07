<?php
session_start();
if (!isset($_SESSION['nombre'])) {
    header("Location: login.php"); 
    exit();
}

if (isset($_POST['logout'])) {
    session_destroy(); 
    header("Location: login.php"); 
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h2>Bienvenido, <?php echo htmlspecialchars($_SESSION['nombre']); ?>!</h2>
    <form method="POST">
        <div class="1"> 
        <input type="submit" name="logout" value="Cerrar Sesión">
        </div>
    </form>
</body>
</html>
