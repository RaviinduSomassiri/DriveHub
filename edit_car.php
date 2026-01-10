<?php
if (session_status() === PHP_SESSION_NONE) { session_start(); }
include 'config.php';

if (!isset($_SESSION['user_id'])) {
header("Location: login_register.php");
exit();
}

include 'header.php';

if(isset($_GET['id'])) {
$id = mysqli_real_escape_string($conn, $_GET['id']);
$res = mysqli_query($conn, "SELECT * FROM vehicles WHERE id = '$id'");
$car = mysqli_fetch_assoc($res);
}

if(isset($_POST['update'])) {
$brand = mysqli_real_escape_string($conn, $_POST['brand']);
$name = mysqli_real_escape_string($conn, $_POST['name']);
$cat = mysqli_real_escape_string($conn, $_POST['category']);
$price = mysqli_real_escape_string($conn, $_POST['price']);
$phone = mysqli_real_escape_string($conn, $_POST['phone_number']);
$year = mysqli_real_escape_string($conn, $_POST['year']);
$fuel = mysqli_real_escape_string($conn, $_POST['fuel_type']);
$mileage = mysqli_real_escape_string($conn, $_POST['mileage']); // NEW MILEAGE DATA
$p_paint = mysqli_real_escape_string($conn, $_POST['cond_paint']);
$p_engine = mysqli_real_escape_string($conn, $_POST['cond_engine']);
$p_interior = mysqli_real_escape_string($conn, $_POST['cond_interior']);
$p_tires = mysqli_real_escape_string($conn, $_POST['cond_tires']);

$sql = "UPDATE vehicles SET 
brand='$brand', 
vehicle_name='$name', 
category='$cat', 
price='$price', 
phone_number='$phone',
year='$year',
fuel_type='$fuel',
mileage='$mileage',
cond_paint='$p_paint',
cond_engine='$p_engine',
cond_interior='$p_interior',
cond_tires='$p_tires'";

if(!empty($_FILES['v_image']['name'])) {
$img_name = $_FILES['v_image']['name'];
$tmp_name = $_FILES['v_image']['tmp_name'];
move_uploaded_file($tmp_name, "car_images/" . $img_name);
$sql .= ", image_url='$img_name'";
}

$sql .= " WHERE id='$id'";

if(mysqli_query($conn, $sql)) {
echo "<script>alert('Car Updated Successfully'); window.location='dashboard.php';</script>";
}
}
?>

<div class="full-page-form">
<div class="container">
<div class="interactive-sheet">
<h2>UPDATE <span style="color:#0056B3;">VEHICLE DETAILS</span></h2>
<p style="color: #28a745; font-weight: bold;">Note: This vehicle is certified after a full inspection.</p>

<form method="POST" enctype="multipart/form-data" onsubmit="return validateVehicleForm()">
<div class="form-grid">
<div class="input-group">
<label>BRAND</label>
<input type="text" name="brand" value="<?php echo $car['brand']; ?>" required>
</div>

<div class="input-group">
<label>MODEL NAME</label>
<input type="text" name="name" value="<?php echo $car['vehicle_name']; ?>" required>
</div>

<div class="input-group">
<label>YEAR</label>
<input type="number" name="year" value="<?php echo $car['year']; ?>" required>
</div>

<div class="input-group">
<label>MILEAGE (KM/MILES)</label>
<input type="number" name="mileage" value="<?php echo $car['mileage']; ?>" required>
</div>

<div class="input-group">
<label>FUEL TYPE</label>
<select name="fuel_type">
<option value="Petrol" <?php if($car['fuel_type']=='Petrol') echo 'selected'; ?>>Petrol</option>
<option value="Diesel" <?php if($car['fuel_type']=='Diesel') echo 'selected'; ?>>Diesel</option>
<option value="Hybrid" <?php if($car['fuel_type']=='Hybrid') echo 'selected'; ?>>Hybrid</option>
<option value="Electric" <?php if($car['fuel_type']=='Electric') echo 'selected'; ?>>Electric</option>
</select>
</div>

<div class="input-group">
<label>CATEGORY</label>
<select name="category" required>
<option value="Luxury" <?php if($car['category']=='Luxury') echo 'selected'; ?>>Luxury</option>
<option value="SUV" <?php if($car['category']=='SUV') echo 'selected'; ?>>SUV</option>
<option value="Economy" <?php if($car['category']=='Economy') echo 'selected'; ?>>Economy</option>
<option value="Sport" <?php if($car['category']=='Sport') echo 'selected'; ?>>Sport</option>
<option value="Classic" <?php if($car['category']=='Classic') echo 'selected'; ?>>Classic</option>
<option value="Truck" <?php if($car['category']=='Truck') echo 'selected'; ?>>Truck</option>
</select>
</div>

<div class="input-group">
<label>PRICE ($)</label>
<input type="number" name="price" value="<?php echo $car['price']; ?>" required>
</div>

<div class="input-group">
<label>CONTACT NUMBER</label>
<input type="tel" name="phone_number" value="<?php echo $car['phone_number']; ?>" required>
</div>

<div class="input-group">
<label>UPDATE IMAGE (LEAVE BLANK TO KEEP CURRENT)</label>
<input type="file" name="v_image">
</div>
</div>

<h3 style="margin-top:30px; border-bottom: 2px solid #0056B3;">UPDATE CONDITION (%)</h3>
<div class="form-grid">
<div class="input-group">
<label>PAINT: <span id="p_val"><?php echo $car['cond_paint']; ?></span>%</label>
<input type="range" name="cond_paint" min="0" max="100" value="<?php echo $car['cond_paint']; ?>" oninput="document.getElementById('p_val').innerHTML = this.value">
</div>
<div class="input-group">
<label>ENGINE: <span id="e_val"><?php echo $car['cond_engine']; ?></span>%</label>
<input type="range" name="cond_engine" min="0" max="100" value="<?php echo $car['cond_engine']; ?>" oninput="document.getElementById('e_val').innerHTML = this.value">
</div>
<div class="input-group">
<label>INTERIOR: <span id="i_val"><?php echo $car['cond_interior']; ?></span>%</label>
<input type="range" name="cond_interior" min="0" max="100" value="<?php echo $car['cond_interior']; ?>" oninput="document.getElementById('i_val').innerHTML = this.value">
</div>
<div class="input-group">
<label>TIRES: <span id="t_val"><?php echo $car['cond_tires']; ?></span>%</label>
<input type="range" name="cond_tires" min="0" max="100" value="<?php echo $car['cond_tires']; ?>" oninput="document.getElementById('t_val').innerHTML = this.value">
</div>
</div>

<button type="submit" name="update" class="btn-full" style="margin-top:30px;">SAVE UPDATED DETAILS</button>
</form>

<div style="margin-top: 20px;">
<a href="dashboard.php" style="color: #666; font-weight: 900; text-decoration: none;">← BACK TO GARAGE</a>
</div>
</div>
</div>
</div>