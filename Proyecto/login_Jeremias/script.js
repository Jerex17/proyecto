
document.getElementById('registroForm').onsubmit = function() {
    const password = document.getElementById('contraseña').value;
    const confirmPassword = document.getElementById('confirmar_contraseña').value;
    
    if (password !== confirmPassword) {
        showModal("Las contraseñas no coinciden.");
        return false; 
    }
    
    if (password.length < 8) {
        showModal("La contraseña debe tener al menos 8 caracteres.");
        return false;
    }

    return true; 
};

