// Inicializamos Firebase
var config = {
    apiKey: "AIzaSyAkuI1DwPN2ys4FkeW-8So1J5iH-Y0NY0A",
    authDomain: "login-web-c89d9.firebaseapp.com",
    databaseURL: "https://login-web-c89d9.firebaseio.com",
    projectId: "login-web-c89d9",
    storageBucket: "",
    messagingSenderId: "66433820679"
};
firebase.initializeApp(config);

    //funcion para registarse en la página de videojugos, con su respectivo código de error en caso de fallo
    function registrarse(){
    var email= document.getElementById("email_r").value;
     var password= document.getElementById("secreto_r").value;
     //crear usuario con mail y contraseña
    firebase.auth().createUserWithEmailAndPassword(email ,password).then(function(user) {
        $('#login').modal('hide');//cerramos el modal
        alert('Ha sido registrado correctamente.');
        }).catch(function(error) {
         alert(error.message);
        });
         }

  //funcion para cerrar sesion
function fin(){
   firebase.auth().signOut();
 }
 //funcion para iniciar sesion con firebase y su respectivo mensaje de error en caso de fallo
function iniciar(){
    var email= document.getElementById("email_s").value;
   var secreto= document.getElementById("secreto_s").value;
   firebase.auth().signInWithEmailAndPassword(email, secreto).then(function(user) {
           $('#login').modal('hide');//cerramos el modal
           alert('Has iniciado sesión correctamente.');
        }).catch(function(error) {
            alert(error.message);
        });
}
    //funcion para cambiar el estado de firebase, de manera que si estas identificado cambia con respecto a si no se ha iniciado sesion
    firebase.auth().onAuthStateChanged(firebaseUser => {

   if(firebaseUser){
     $('#ini').hide();
     $('#aut').hide();
     $('#cerrar').show();
     $('#mostrar').show();
      }
   if(!firebaseUser){
      $('#ini').show();
      $('#aut').show();
      $('#cerrar').hide();
      $('#mostrar').hide();
   }
});

function entrar(){
    var user = firebase.auth().currentUser;
    if(user){
        window.location.href = "zona-socios.html";
    }
}