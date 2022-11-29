function validarForma(forma) {
    var usuario = forma["usuario"];
    var contrasena = forma["contrasena"];
    if (usuario.value == "" || usuario.value == "Escribir usuario") {
        alert("Debe proporcionar un nombre de usuario");
        usuario.focus();
        usuario.select();
        return false;
    }
    if (contrasena.value == "" || contrasena.value.length < 3) {
        alert("Debe proporcionar un password de al menos 3 caracteres");
        contrasena.focus();
        contrasena.select();
        return false;
    }
    var tecnologia = forma["tecnologia"];
    var checkSeleccionado = false;
    //revisamos si se selecciono alguna tecnologia
    for (var i = 0; i < tecnologia.length; i++) {
        if (tecnologia[i].checked) {
            checkSeleccionado = true;
        }
    }
    if (!checkSeleccionado) {
        alert("Debe seleccionar una tecnologia");
        return false;
    }

    var generos = forma["genero"];
    var radioSeleccionado = false;
    for (var i = 0; i < generos.length; i++) {
        if (generos[i].checked) {
            radioSeleccionado = true;
        }
    }
    if (!radioSeleccionado) {
        alert("Debe seleccionar un genero");
        return false;
    }

    var ocupacion = forma["ocupacion"];
    if (ocupacion.value == "") {
        alert("Debe seleccionar una ocupacion");
        return false;
    }
    // Formulario es valido
    alert("Formulario valido, enviando datos al servidor");
    return true;

}