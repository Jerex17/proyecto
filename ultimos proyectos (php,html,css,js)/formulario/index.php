<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Registro</title>
    <link rel="stylesheet" href="MiStyle.css">
</head>
<body>
    <div class="container">
        <h1 style="text-align: center;">Formulario Registro</h1>
        <form method="post" action="formulario.php">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="Nombre" name="Nombre" placeholder="Ingrese su nombre" required>
            </div>
            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" id="Apellido" name="Apellido" placeholder="Ingrese su apellido" required>
            </div>
            <div class="form-group">
                <label for="Fechadenacimiento">Fecha de nacimiento:</label>
                <input type="Date" id="Fechadenacimiento" name="Fechadenacimiento" placeholder="DD/MM/AAAA" required>
            </div>
            <div class="form-group">
                <label for="edad">Edad:</label>
                <input type="number" id="Edad" name="Edad" placeholder="Ingrese su edad" required>
            </div>
            <div class="form-group">
                <label for="estado_civil">Estado Civil:</label>
                <select id="Estado_civil" name="Estado_civil" required style="width: 250px; height: 35px;">
                    <option value="" disabled selected>Estado civil</option>
                    <option value="soltero">Soltero</option>
                    <option value="casado">Casado</option>
                    <option value="divorciado">Divorciado</option>
                    <option value="viudo">Viudo</option>
                </select>
            </div>
            <div class="form-group">
                <label for="sexo">Sexo:</label>
                <select id="sexo" name="Sexo" required style="width: 250px; height: 35px;">
                    <option value="" disabled selected>Sexo</option>
                    <option value="hombre">Hombre</option>
                    <option value="mujer">Mujer</option>
                </select>
            </div>
            <div class="form-group">
                <label for="correo">Correo:</label>
                <input type="email" id="Correo" name="Correo" placeholder="Ingrese su correo electrónico" required>
            </div>
            <div class="form-group">
                <label for="telefono">Teléfono:</label>
                <input type="tel" id="Telefono" name="Telefono" placeholder="Ingrese su teléfono" required>
            </div>
            <div class="form-group">
                <label for="direccion">Dirección:</label>
                <textarea id="Direccion" name="Direccion" placeholder="Ingrese su dirección" required></textarea>
            </div>

            <div class="button-group">
    <input type="submit" value="Enviar" name="enviar" class="btn1">
    <input type="reset" value="Cancelar" class="btn2">
</div>
        </form>

    </div>
    
</body>
</html>