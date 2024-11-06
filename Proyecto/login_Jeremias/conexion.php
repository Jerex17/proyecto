<?php
session_start(); 

$conn = new mysqli("localhost", "root", "", "login");

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['nombre'])) {
       
        $nombre = $conn->real_escape_string(trim($_POST['nombre']));
        $apellido = $conn->real_escape_string(trim($_POST['apellido']));
        $correo_electronico = $conn->real_escape_string(trim($_POST['correo_electronico']));
        $contraseña = password_hash(trim($_POST['contraseña']), PASSWORD_DEFAULT);

        
        $stmt = $conn->prepare("INSERT INTO ingresar (nombre, apellido, correo_electronico, contraseña) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $nombre, $apellido, $correo_electronico, $contraseña);

        if ($stmt->execute()) {
            $_SESSION['message'] = "Registro exitoso.";
        } else {
            $_SESSION['message'] = "Error al registrar: " . $stmt->error;
        }

        $stmt->close();
        header("Location: registro.php"); 
        exit();

    } elseif (isset($_POST['usuario'])) {
        
        $usuario = $conn->real_escape_string(trim($_POST['usuario']));
        $contraseña = trim($_POST['contraseña']);

        
        $stmt = $conn->prepare("SELECT nombre, contraseña FROM ingresar WHERE correo_electronico = ?");
        $stmt->bind_param("s", $usuario);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            $stmt->bind_result($nombre, $hashed_password);
            $stmt->fetch();  

            if (password_verify($contraseña, $hashed_password)) {
                $_SESSION['nombre'] = $nombre; 
                header("Location: bienvenida.php"); 
                exit();
            } else {
                $_SESSION['message'] = "Contraseña incorrecta.";
                header("Location: login.php"); 
                exit();
            }
        } else {
            $_SESSION['message'] = "El usuario no existe.";
            header("Location: login.php"); 
            exit();
        }

        $stmt->close();
    }
}

$conn->close();
?>
