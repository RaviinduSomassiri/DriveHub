<?php
if (session_status() === PHP_SESSION_NONE) { session_start(); }
include 'config.php';
if (!isset($_SESSION['user_id'])) { header("Location: login_register.php"); exit(); }
include 'header.php';

if(isset($_POST['add_beast'])) {
$brand = mysqli_real_escape_string($conn, $_POST['brand']);
$name = mysqli_real_escape_string($conn, $_POST['name']);
$cat = mysqli_real_escape_string($conn, $_POST['category']);
$price = mysqli_real_escape_string($conn, $_POST['price']);
$phone = mysqli_real_escape_string($conn, $_POST['phone_number']);
$year = mysqli_real_escape_string($conn, $_POST['year']);
$fuel = mysqli_real_escape_string($conn, $_POST['fuel_type']);
$mileage = mysqli_real_escape_string($conn, $_POST['mileage']);
$p_paint = $_POST['cond_paint'];
$p_engine = $_POST['cond_engine'];
$p_interior = $_POST['cond_interior'];
$p_tires = $_POST['cond_tires'];

$img_name = $_FILES['v_image']['name'];
move_uploaded_file($_FILES['v_image']['tmp_name'], "car_images/" . $img_name);

$sql = "INSERT INTO vehicles (brand, vehicle_name, category, price, phone_number, image_url, year, fuel_type, mileage, cond_paint, cond_engine, cond_interior, cond_tires) 
VALUES ('$brand', '$name', '$cat', '$price', '$phone', '$img_name', '$year', '$fuel', '$mileage', '$p_paint', '$p_engine', '$p_interior', '$p_tires')";

if(mysqli_query($conn, $sql)) {
echo "<script>alert('Car Added Successfully'); window.location='dashboard.php';</script>";
}
}
?>

<div class="container">
<h2>ADD NEW CAR</h2>
<p style="color:green; font-weight:bold;">Note: Every car must pass our 150-point inspection before adding.</p>

<form method="POST" enctype="multipart/form-data">
<input type="text" name="brand" placeholder="Brand" required>
<input type="text" name="name" placeholder="Model Name" required>
<input type="number" name="year" placeholder="Year" required>
<input type="number" name="mileage" placeholder="Mileage (KM/Miles)" required>
<select name="fuel_type">
<option value="Petrol">Petrol</option>
<option value="Diesel">Diesel</option>
<option value="Hybrid">Hybrid</option>
<option value="Electric">Electric</option>
</select>
<select name="category">
<option value="Luxury">Luxury</option>
<option value="Economy">Economy</option>
<option value="SUV">SUV</option>
<option value="Electric">Electric</option>
<option value="Classic">Classic</option>
<option value="Truck">Truck</option>
</select>
<input type="number" name="price" placeholder="Price in Dollars ($)" required>
<input type="text" name="phone_number" placeholder="Contact Number" required>
<input type="file" name="v_image" required>
<button type="submit" name="add_beast">ADD CAR TO LIST</button>
</form>
</div>