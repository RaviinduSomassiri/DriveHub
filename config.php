<?php
// This connects the website to the XAMPP database
$conn = mysqli_connect("localhost:3307", "root", "", "drivehub_db");

if (!$conn) {
    die("Connection failed!");
}
?>