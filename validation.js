function validateRegister() {
let email = document.getElementById("reg_email").value;
let password = document.getElementById("reg_password").value;
if (!email.includes("@")) {
alert("Email must contain '@'");
return false;
}
if (password.length < 8) {
alert("Password must be at least 8 characters");
return false;
}
return true;
}
function validateLogin() {
let email = document.getElementById("log_email").value;
let password = document.getElementById("log_password").value;
if (!email.includes("@")) {
alert("Email must contain '@'");
return false;
}
if (password.length < 8) {
alert("Password must be at least 8 characters");
return false;
}
return true;
}