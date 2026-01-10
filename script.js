function validateAuth(type) {
if (type === 'reg') {
let name = document.getElementById("reg_name").value;
let pass = document.getElementById("reg_pass").value;
if (name.length < 3) { alert("Name too short!"); return false; }
if (pass.length < 5) { alert("Password must be at least 5 characters!"); return false; }
}
return true;
}

function validateVehicleForm() {
let brand = document.getElementsByName("brand")[0].value;
let price = document.getElementsByName("price")[0].value;
let phone = document.getElementsByName("phone_number")[0].value;

if (brand == "") { alert("Brand is required"); return false; }
if (price <= 0) { alert("Price must be greater than 0"); return false; }
if (!/^0[0-9]{9}$/.test(phone)) { 
alert("Invalid Sri Lankan Phone (Need 10 digits starting with 0)"); 
return false; 
}
return true;
}