<?php
$conn = mysqli_connect("localhost", "root", "", "drivehub_db");

if (!$conn) {
die("DATABASE CONNECTION FAILED: " . mysqli_connect_error());
}

// SETTING SESSION START HERE TO PREVENT HEADER ERRORS LATER
if (session_status() === PHP_SESSION_NONE) {
session_start();
}
?>