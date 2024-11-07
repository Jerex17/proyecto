<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h2>Login</h2>
    <?php session_start(); ?>
    <form action="conexion.php" method="POST" id="loginForm">
        <label for="usuario">Correo Electrónico</label>
        <input type="text" id="usuario" name="usuario" required><br>

        <label for="contraseña">Contraseña:</label>
        <input type="password" id="contraseña" name="contraseña" required><br>

        <input type="submit" value="Iniciar Sesión">
        <input type="reset" value="Cancelar">
    </form>

    <div id="messageModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <p id="modalMessage"></p>
        </div>
    </div>

    <script>
        const modal = document.getElementById('messageModal');
        const modalMessage = document.getElementById('modalMessage');
        const closeModal = document.querySelector('.close');

        function showModal(message) {
            modalMessage.textContent = message;
            modal.style.display = "block";
        }

        closeModal.onclick = function() {
            modal.style.display = "none";
        }

        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

      
        <?php if (isset($_SESSION['message'])): ?>
            showModal("<?php echo addslashes($_SESSION['message']); ?>");
            <?php unset($_SESSION['message']); ?>
        <?php endif; ?>
    </script>
</body>
</html>
