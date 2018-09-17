var ck_name = /^[A-Za-z0-9 ]{3,20}$/;
var ck_email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i 
var ck_username = /^[A-Za-z0-9_]{1,20}$/;
var ck_password =  /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;

function validate(user_registration){
var name = user_registration.name.value;
var email = user_registration.email.value;
var username = user_registration.uname.value;
var password = user_registration.pass.value;
var errors = [];
 
 if (!ck_name.test(name)) {
  errors[errors.length] = "You valid Name .";
 }
 if (!ck_email.test(email)) {
  errors[errors.length] = "You must enter a valid email address.";
 }
 if (!ck_username.test(uname)) {
errors[errors.length] = "You valid UserName no special char .";
 }
 if (!ck_password.test(pass)) {
  errors[errors.length] = "You must enter a valid Password ";
 }

 if (errors.length > 0) {

  reportErrors(errors);
  return false;
 }
  return true;
}
function reportErrors(errors){
 var msg = "Please Enter Valide Data...\n";
 for (var i = 0; i<errors.length; i++) {
 var numError = i + 1;
  msg += "\n" + numError + ". " + errors[i];
}
 alert(msg);
}


