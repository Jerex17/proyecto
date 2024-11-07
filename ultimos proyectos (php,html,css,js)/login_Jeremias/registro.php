<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    
</head>
<body>
    <h2>Registro</h2>
    <?php session_start(); ?>
    <form action="conexion.php" method="POST" id="registroForm">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br>

        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" name="apellido" required><br>

        <label for="correo_electronico">Correo Electrónico:</label>
        <input type="email" id="correo_electronico" name="correo_electronico" required><br>

        <label for="contraseña">Contraseña:</label>
        <input type="password" id="contraseña" name="contraseña" required><br>
        <div id="passwordFeedback" class="feedback"></div>
        <div id="passwordStrength" class="strength"></div>

        <label for="confirmar_contraseña">Confirmar Contraseña:</label>
        <input type="password" id="confirmar_contraseña" name="confirmar_contraseña" required><br>
        <div id="passwordFeedback" class="feedback"></div>
        <div id="passwordStrength" class="strength"></div>


        <input type="submit" value="Crear">
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
        const passwordFeedback = document.getElementById('passwordFeedback');
        const passwordStrength = document.getElementById('passwordStrength');

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

        function checkPasswordStrength(password) {
            let strength = "Débil";
            const hasUppercase = /[A-Z]/.test(password);
            const hasLowercase = /[a-z]/.test(password);
            const hasNumbers = /[0-9]/.test(password);
            const hasSpecialChars = /[!@#$%^&*(),.?":{}|<>]/.test(password);

            const lengthCriteria = password.length >= 12;
            const criteriaMet = [hasUppercase, hasLowercase, hasNumbers, hasSpecialChars].filter(Boolean).length;

            if (lengthCriteria && criteriaMet === 4) {
                strength = "Fuerte";
            } else if (lengthCriteria && criteriaMet === 2) {
                strength = "Moderada";
            }

            passwordStrength.textContent = `Nivel de contraseña: ${strength}`;
        }

        document.getElementById('contraseña').addEventListener('input', function() {
            const password = this.value;
            passwordFeedback.textContent = ''; 

            if (password.length < 12) {
                passwordFeedback.textContent = "La contraseña debe tener al menos 12 caracteres.";
            } else if (!/[A-Z]/.test(password)) {
                passwordFeedback.textContent = "La contraseña debe contener al menos una letra mayúscula.";
            } else if (!/[0-9]/.test(password)) {
                passwordFeedback.textContent = "La contraseña debe contener al menos un número.";
            }

            checkPasswordStrength(password);
        });

        document.getElementById('registroForm').onsubmit = function() {
            const password = document.getElementById('contraseña').value;
            const confirmPassword = document.getElementById('confirmar_contraseña').value;

            if (password !== confirmPassword) {
                showModal("Las contraseñas no coinciden.");
                return false; 
            }

            return true; 
        }

        <?php if (isset($_SESSION['message'])): ?>
            showModal("<?php echo addslashes($_SESSION['message']); ?>");
            <?php unset($_SESSION['message']); ?>
        <?php endif; ?>
    </script>
</body>
</html>

