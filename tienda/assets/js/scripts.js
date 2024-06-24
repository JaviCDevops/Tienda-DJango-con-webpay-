 function confirmaAlert(pregunta, ruta) {
     jCustomConfirm(pregunta, 'Tienda', 'Aceptar', 'Cancelar', function(r) {
         if (r) {
             window.location = ruta;
         }
     });
 }

 function alertAlert(mensaje) {
     jAlert(mensaje);
 }
function validaCorreo(valor) {
  if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(valor)){
   return true;
  } else {
   return false;
  }
}
 function agregarAlCarro()
 {
    var form=document.agregar_al_carro;
    form.cantidad.value=document.getElementById('cantidad').value;
    form.submit();
 }
 function sendLogin()
{
    var form=document.form_login;
    if(form.correo.value==0)
    {
        alertAlert('El campo E-Mail es obligatorio');
        form.correo.value='';
        return false;
    }
    if(validaCorreo(form.correo.value)==false)
    {
        alertAlert('El E-Mail no es válido');
        form.correo.value='';
        return false;
    }
    if(form.password.value==0)
    {
        alertAlert('El campo Contraseña es obligatorio');
        form.password.value='';
        return false;
    }
    form.submit();
}
function sendRegistro()
 {
    form=document.form_registro;
    if(form.nombre.value==0)
    {
        alertAlert('El campo Nombre es obligatorio');
        form.nombre.value='';
        return false;
    }
   
        if(form.apellido.value==0)
        {
            alertAlert('El campo Apellido es obligatorio');
            form.apellido.value='';
            return false;
        }
    
    
    if(form.correo.value==0)
    {
        alertAlert('El campo E-Mail es obligatorio');
        form.correo.value='';
        return false;
    }
    if(validaCorreo(form.correo.value)==false)
    {
        alertAlert('El E-Mail no es válido');
        form.correo.value='';
        return false;
    }
    if(form.password.value==0)
    {
        alertAlert('El campo Contraseña es obligatorio');
        form.password.value='';
        return false;
    }
    if(form.password2.value==0)
    {
        alertAlert('El campo Repetir Contraseña es obligatorio');
        form.password2.value='';
        return false;
    }
    if(form.password.value!=form.password2.value)
    {
        alertAlert('Las contraseñas ingresadas no coinciden');
        form.password.value='';
        form.password2.value='';
        return false;
    }
    form.submit();
 }
 function sendRestore()
 {
    var form=document.form_restore;
    
    
    
    if(form.password1.value==0)
    {
        alertAlert('El campo Contraseña es obligatorio');
        form.password1.value='';
        return false;
    }
    if(form.password2.value==0)
    {
        alertAlert('El campo Repetir Contraseña es obligatorio');
        form.password2.value='';
        return false;
    }
    if(form.password1.value!=form.password2.value)
    {
        alertAlert('Las contraseñas ingresadas no coinciden');
        form.password1.value='';
        form.password2.value='';
        return false;
    }
    form.submit();
 }
 function sendReset()
 {
    var form=document.form_reset;
    
    
    if(form.correo.value==0)
    {
        alertAlert('El campo E-Mail es obligatorio');
        form.correo.value='';
        return false;
    }
   
    form.submit();
 }
 function salir(ruta)
 {
    jCustomConfirm('¿Realmente desea cerrar sesión?', 'Tienda', 'Aceptar', 'Cancelar', function(r) {
         if (r) {
             window.location = ruta;
         }
     });
 }
 function modificarCantidadProductoCarro(id, cantidad)
 {
    let ruta="/carro/modificar-cantidad-carro/"+id+"/"+cantidad;
    window.location=ruta;
 }
 function sendPago()
 {
    let form=document.form_pagar;
    if(form.direccion.value==0)
    {
        alertAlert("Debes indicar la dirección del envío");
        return false;
    }
    if(form.indicaciones.value==0)
    {
        form.indicaciones.value="";
    }
    form.submit();
 }

 //para USD

$('#convert-to-usd').on('click', function() {
  $.ajax({
    url: 'https://api.exchangerate-api.com/v4/latest/CLP',  // URL de la API de cambio de divisas
    method: 'GET',
    success: function(data) {
      var exchangeRate = data.rates.USD;  // Obtiene la tasa de cambio a USD
      convertToUSD(exchangeRate);
    },
    error: function() {
      alert('Error al obtener la tasa de cambio.');
    }
  });
});

function convertToUSD(exchangeRate) {
  // Obtener el total en CLP
  var totalCLP = parseFloat($('#total-clp').text().replace('$', '').replace(',', ''));
  
  // Calcular el total en USD
  var totalUSD = totalCLP / exchangeRate;

  // Mostrar el total en USD en la interfaz de usuario
  $('#total-usd').text('$' + totalUSD.toFixed(2));
}

$('#convert-to-clp').on('click', function() {
    $.ajax({
        url: 'https://api.exchangerate-api.com/v4/latest/CLP',  
        method: 'GET',
        success: function(data) {
            var exchangeRate = data.rates.USD;
            var totalUSD = parseFloat($('#total-usd').text().substring(1)); // Obtener el total en USD como un número
            var totalCLP = (totalUSD * exchangeRate).toFixed(2); // Convertir el total a CLP y redondearlo a 2 decimales
            $('#total-clp').text('$' + totalCLP); // Actualizar el contenido del elemento
        },
        error: function() {
            alert('Error al obtener la tasa de cambio.');
        }
    });
});


