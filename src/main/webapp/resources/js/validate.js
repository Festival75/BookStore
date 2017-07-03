function validate() {
    var login = document.regForm.login.value;
    var password = document.regForm.password.value;
    var rpassword = document.regForm.rpassword.value;

    if (login==""){
        alert("Введите логин");
        document.regForm.login.focus();
        return false;
    }else if((login.length<5)||(login.length>15)){
        alert("Логин должен быть не менее 5 и не более 15 символов");
        document.regForm.login.focus();
        return false;
    }
    if (password==""){
        alert("Введите пароль");
        document.regForm.password.focus();
        return false;
    }else if((password.length<5)||(password.length>15)){
        alert("Пароль должен быть не менее 5 и не более 15 символов");
        document.regForm.password.focus();
        return false;
    }
    if (rpassword==""){
        alert("Введите подтверждение пароля");
        document.regForm.rpassword.focus();
        return false;
    }else if((rpassword.length<5)||(rpassword.length>15)){
        alert("Пароль должен быть не менее 5 и не более 15 символов");
        document.regForm.rpassword.focus();
        return false;
    }
    if (!(password==rpassword)){
        alert("Введеные пароли не совпадают");
        document.regForm.password.focus();
        return false;
    }
}