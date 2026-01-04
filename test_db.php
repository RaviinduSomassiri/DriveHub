<?php
// Humanized connection check
$my_connection = mysqli_connect("localhost", "root", "", "drivehub_db");

if ($my_connection) {
    echo "<h1 style='color: green;'>YES! The Database is Connected!</h1>";
} else {
    echo "<h1 style='color: red;'>NO! Connection Failed: " . mysqli_connect_error() . "</h1>";
}
?>