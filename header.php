<?php
if (session_status() === PHP_SESSION_NONE) {
session_start();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ELITE DRIVE</title>
<link rel="stylesheet" href="style.css">
<script src="script.js" defer></script>
</head>
<body>
<header class="elite-header">
<div class="header-container">
<a href="home.php" class="logo">ELITE<span>DRIVE</span></a>
<nav class="nav-links">
<a href="home.php">Marketplace</a>
<?php if(isset($_SESSION['user_id'])): ?>
<a href="add_car.php">Add Vehicle</a>
<a href="dashboard.php">Manage Garage</a>
<a href="profile.php" style="color:#0056B3; font-weight:900;">My Profile</a>
<a href="logout.php" class="logout-tag">Logout</a>
<?php else: ?>
<a href="login_register.php" class="login-tag">Admin Access</a>
<?php endif; ?>
</nav>
</div>
</header>