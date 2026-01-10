<?php
if (session_status() === PHP_SESSION_NONE) { session_start(); }
include 'config.php';
include 'header.php';

// REDIRECT IF ALREADY LOGGED IN
if(isset($_SESSION['user_id'])) {
header("Location: dashboard.php");
exit();
}

$msg = "";

// --- LOGIN LOGIC ---
if(isset($_POST['login'])) {
$email = mysqli_real_escape_string($conn, $_POST['email']);
$pass = mysqli_real_escape_string($conn, $_POST['password']);

// This checks against your specific record in the database
$res = mysqli_query($conn, "SELECT * FROM users WHERE email='$email' AND password='$pass'");

if(mysqli_num_rows($res) > 0) {
$user = mysqli_fetch_assoc($res);
$_SESSION['user_id'] = $user['id'];
$_SESSION['user_name'] = $user['full_name'];
header("Location: dashboard.php");
exit();
} else {
$msg = "ACCESS DENIED: INVALID ADMINISTRATIVE CREDENTIALS";
}
}
?>

<div class="login-page-wrapper" style="display: flex; justify-content: center; padding: 50px;">
<div class="form-box shadow-glow" style="max-width: 450px; width: 100%;">
<h1 style="text-align: center;">ADMIN <span style="color:#0056B3;">LOGIN</span></h1>

<?php if($msg != ""): ?>
<div class="error-toast" style="background: #FF4444; color: white; padding: 10px; margin-bottom: 15px; text-align: center; font-weight: bold;">
<?php echo $msg; ?>
</div>
<?php endif; ?>

<form method="POST" onsubmit="return validateAuth('login')">
<label style="display: block; font-weight: 900; margin-bottom: 5px;">EMAIL ADDRESS</label>
<input type="email" name="email" id="login_email" placeholder="admin@gmail.com" required 
style="width: 100%; padding: 12px; margin-bottom: 20px; border: 2px solid #1A2B3C;">

<label style="display: block; font-weight: 900; margin-bottom: 5px;">PASSWORD</label>
<input type="password" name="password" id="login_pass" placeholder="••••••••" required 
style="width: 100%; padding: 12px; margin-bottom: 25px; border: 2px solid #1A2B3C;">

<button type="submit" name="login" class="btn-submit" style="width: 100%;">AUTHORIZE ACCESS</button>
</form>

<p style="margin-top: 30px; font-size: 11px; color: #999; text-align: center; letter-spacing: 1px;">
ELITE DRIVE SYSTEM SECURITY: AUTHORIZED PERSONNEL ONLY
</p>
</div>
</div>