<?php
// 1. Connect to Database
include 'db_connect.php';

// 2. Initialize the Query
// By default, we select ALL vehicles
$sql = "SELECT * FROM vehicles";

// 3. Check if Search Button was clicked (POST method)
if (isset($_POST['search_btn'])) {
    
    // Get values from the form
    $s_brand = $_POST['brand'];
    $s_category = $_POST['category'];
    $s_fuel = $_POST['fuel_type'];

    // Start building the WHERE clause
    // We use "1=1" trick so we can easily add "AND" conditions
    $sql .= " WHERE 1=1";

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

// 4. Execute the Query
$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html>
<head>
<title>DriveHub - Sri Lanka's Elite Vehicle Market</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<nav>
<a href="index.php" class="logo">DRIVEHUB</a>
<ul class="nav-links">
<li><a href="index.php">Home</a></li>
<li><a href="login.php">Login</a></li>
<li><a href="sell.php">Post an Ad</a></li> <li><a href="inventory.php">My Garage</a></li>
</ul>
</nav>
</header>

<section class="search-section">
<h2>Find Your Dream Vehicle</h2>
        
<form action="index.php" method="POST" class="search-form">
            
<div class="search-group">
<label>Brand</label>
<select name="brand">
<option value="All">All Brands</option>
<option value="Toyota">Toyota</option>
<option value="Honda">Honda</option>
<option value="Nissan">Nissan</option>
<option value="BMW">BMW</option>
<option value="Benz">Benz</option>
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
<button type="submit" name="search_btn" class="btn-search">Search Vehicles</button>
</div>

</form>
</section>

<div class="container">
<h3 class="gallery-header">Latest Arrivals</h3>

<div class="gallery-grid">

<?php
// 5. Check if we have results
if (mysqli_num_rows($result) > 0) {
// Loop through each row in the database
while($row = mysqli_fetch_assoc($result)) {
?>
  
<div class="vehicle-card">
<img src="images/car1.jpg" alt="Vehicle Image">

<div class="vehicle-info">
<div class="vehicle-title">
<?php echo $row['brand'] . " " . $row['vehicle_name']; ?>
</div>
  
<div class="vehicle-price">
Rs. <?php echo number_format($row['price']); ?>
</div>
  
<div class="vehicle-details">
<p>Year: <?php echo $row['year_made']; ?></p>
<p>Fuel: <?php echo $row['fuel_type']; ?></p>
<p>Type: <?php echo $row['category']; ?></p>
</div>
</div>
</div>
<?php
}
} else {
echo "<p>No vehicles found matching your criteria.</p>";
}
?>
</div>
</div>

<footer>
<p>&copy; 2026 DriveHub. All Rights Reserved.</p>
</footer>

</body>
</html>