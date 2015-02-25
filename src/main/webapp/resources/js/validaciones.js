 function validate(form){

    var nombre = form.nombre.value;
    var email = form.email.value;
    var reg=/(^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$)/;

    if (nombre.length == 0) {
        alert("Debes escribir tu nombre.");
        return false;
    }

    if (email.length === 0) {
        alert("Debes escribir tu correo electronico.");
        return false;
    }

    if(reg.test(mail)){
        
        return true;

    }else{
            alert("Correo no valido.");
            return false;
    }
}