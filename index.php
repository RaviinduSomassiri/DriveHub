<?php
// 1. Start Session
session_start();
// 2. Connect to database
include 'config.php';
// 3. Include the header
include 'header.php';
// 4. Initialize the Query
// By default, we select ALL vehicles
$sql = "SELECT * FROM vehicles ORDER BY id DESC";

// 5. Search Logic
if (isset($_POST['search_btn'])) {
    
$s_brand = $_POST['brand'];
$s_category = $_POST['category'];
$s_fuel = $_POST['fuel_type'];

// Start building query with a "dummy" WHERE clause
$sql = "SELECT * FROM vehicles WHERE 1=1";

// Append conditions if the user didn't select "All"
if ($s_brand != "All") {
$sql .= " AND brand = '$s_brand'";
}
if ($s_category != "All") {
$sql .= " AND category = '$s_category'";
}
if ($s_fuel != "All") {
$sql .= " AND fuel_type = '$s_fuel'";
}
}

// 6. Execute the Query
$result = mysqli_query($conn, $sql);
?>

<div class="main-content">
    
<section class="search-section">
<h2 style="color: #d90429; border-bottom: 2px solid #ddd; padding-bottom: 10px;">
Find Your Dream Vehicle
</h2>
        
<form action="index.php" method="POST" class="search-form">
            
<div class="search-group">
<label>Brand</label>
<select name="brand">
<option value="All">All Brands</option>
<option value="Toyota">Toyota</option>
<option value="Honda">Honda</option>
<option value="Nissan">Nissan</option>
<option value="BMW">BMW</option>
option value="Benz">Benz</option>
</select>
</div>

<div class="search-group">
<label>Category</label>
<select name="category">
<option value="All">All Categories</option>
<option value="Car">Car</option>
<option value="SUV">SUV</option>
<option value="Van">Van</option>
<option value="Bike">Bike</option>
</select>
</div>

<div class="search-group">
<label>Fuel Type</label>
<select name="fuel_type">
<option value="All">All Types</option>
<option value="Petrol">Petrol</option>
<option value="Diesel">Diesel</option>
<option value="Hybrid">Hybrid</option>
<option value="Electric">Electric</option>
</select>
</div>

<div class="search-group">
<button type="submit" name="search_btn" class="btn-search">Search</button>
</div>

</form>
</section>

<div class="container">
<h3 class="gallery-header">Latest Arrivals</h3>

<div class="gallery-grid">
   
<?php
// Check if any cars exist
if (mysqli_num_rows($result) > 0) {
   
// Loop through database results
while($row = mysqli_fetch_assoc($result)) {
?>
   
<div class="vehicle-card">
<img src="images/car1.jpg" alt="Car" class="card-img">
   
<div class="vehicle-info">
<div class="vehicle-title">
<?php echo $row['brand'] . " " . $row['vehicle_name']; ?>
</div>
   
<div class="vehicle-price">
Rs. <?php echo number_format($row['price']); ?>
</div>
    
<div class="vehicle-details">
<span>Year: <?php echo $row['year_made']; ?></span> | 
<span><?php echo $row['fuel_type']; ?></span> |
<span><?php echo $row['mileage']; ?> km</span>
</div>
   
<p style="color:gray; font-size:12px; margin-top:5px;">
Category: <?php echo $row['category']; ?>
</p>
</div>
/div>

<?php
}
} else {
echo "<p style='text-align:center; width:100%;'>No vehicles found matching your criteria.</p>";
}
?>
</div>
</div>

</div>

<footer style="background:#222; color:white; text-align:center; padding:20px; margin-top:50px;">
    <p>&copy; 2026 DriveHub. All Rights Reserved.</p>
</footer>

</body>
</html>

