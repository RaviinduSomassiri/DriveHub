<?php
if (session_status() === PHP_SESSION_NONE) { session_start(); }
include 'config.php';
include 'header.php';

// 1. CAPTURE ALL FILTERS
$search = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : '';
$cat = isset($_GET['category']) ? mysqli_real_escape_string($conn, $_GET['category']) : '';
$fuel = isset($_GET['fuel_type']) ? mysqli_real_escape_string($conn, $_GET['fuel_type']) : '';
$max_price = (isset($_GET['max_price']) && $_GET['max_price'] != '') ? (int)$_GET['max_price'] : '';
$max_mileage = (isset($_GET['max_mileage']) && $_GET['max_mileage'] != '') ? (int)$_GET['max_mileage'] : '';

// 2. DYNAMIC SQL CONSTRUCTION
$sql = "SELECT * FROM vehicles WHERE 1=1";

if(!empty($search)) { 
$sql .= " AND (brand LIKE '%$search%' OR vehicle_name LIKE '%$search%')"; 
}
if(!empty($cat)) { 
$sql .= " AND category = '$cat'"; 
}
if(!empty($fuel)) { 
$sql .= " AND fuel_type = '$fuel'"; 
}
if(!empty($max_price)) { 
$sql .= " AND price <= $max_price"; 
}
if(!empty($max_mileage)) { 
$sql .= " AND mileage <= $max_mileage"; 
}

$sql .= " ORDER BY id DESC";
$result = mysqli_query($conn, $sql);
?>

<div class="container" style="margin-top: 30px; margin-bottom: 30px;">
<div style="background: #FFFFFF; border-left: 10px solid #0056B3; padding: 40px; box-shadow: 15px 15px 0px #F1F4F8; border: 1px solid #EEE;">
<div style="display: flex; gap: 40px; align-items: center; flex-wrap: wrap;">

<div style="flex: 2; min-width: 300px;">
<h2 style="font-size: 38px; color: #1A2B3C; margin: 0; font-weight: 900;">
CERTIFIED <span style="color: #0056B3;">QUALITY</span>
</h2>
<p style="font-size: 18px; color: #555; line-height: 1.6; margin-top: 15px;">
Welcome to Elite Drive. We only sell the best cars. Every vehicle on this list has 
passed a full inspection by our experts. We check the engine, the body, and the 
interior to make sure every car is safe and ready for you.
</p>
<p style="font-weight: bold; color: #0056B3; margin-top: 10px; font-size: 18px;">
High Quality. Best Prices. All in Dollars ($).
</p>
</div>

<div style="flex: 1; min-width: 220px; display: flex; flex-direction: column; gap: 15px;">
<div style="background: #1A2B3C; color: #FFF; padding: 20px; text-align: center; border-radius: 4px;">
<span style="font-size: 30px; font-weight: 900; display: block;">100%</span>
<span style="font-size: 11px; letter-spacing: 2px; text-transform: uppercase;">Certified Inspection</span>
</div>
<div style="background: #0056B3; color: #FFF; padding: 20px; text-align: center; border-radius: 4px;">
<span style="font-size: 30px; font-weight: 900; display: block;">GOLD</span>
<span style="font-size: 11px; letter-spacing: 2px; text-transform: uppercase;">Condition Standard</span>
</div>
</div>

</div>
</div>
</div>

<div class="search-section highlighted-panel" style="padding: 20px 0;">
<div class="container">
<form action="home.php" method="GET" class="multi-filter-bar shadow-glow" style="display:grid; grid-template-columns: repeat(4, 1fr); gap:10px; background:#fff; padding:25px; border: 2px solid #1A2B3C;">
<input type="text" name="search" placeholder="SEARCH BRAND OR MODEL NAME..." value="<?php echo $search; ?>" style="grid-column: span 4; padding: 15px; border: 1px solid #ddd; font-size: 16px;">

<select name="category" style="padding: 12px; border: 1px solid #ddd;">
<option value="">ALL CATEGORIES</option>
<option value="Luxury" <?php if($cat == 'Luxury') echo 'selected'; ?>>LUXURY</option>
<option value="SUV" <?php if($cat == 'SUV') echo 'selected'; ?>>SUV</option>
<option value="Economy" <?php if($cat == 'Economy') echo 'selected'; ?>>ECONOMY</option>
<option value="Sport" <?php if($cat == 'Sport') echo 'selected'; ?>>SPORT</option>
<option value="Classic" <?php if($cat == 'Classic') echo 'selected'; ?>>CLASSIC</option>
<option value="Truck" <?php if($cat == 'Truck') echo 'selected'; ?>>TRUCK</option>
</select>

<select name="fuel_type" style="padding: 12px; border: 1px solid #ddd;">
<option value="">ANY FUEL TYPE</option>
<option value="Petrol" <?php if($fuel == 'Petrol') echo 'selected'; ?>>PETROL</option>
<option value="Diesel" <?php if($fuel == 'Diesel') echo 'selected'; ?>>DIESEL</option>
<option value="Hybrid" <?php if($fuel == 'Hybrid') echo 'selected'; ?>>HYBRID</option>
<option value="Electric" <?php if($fuel == 'Electric') echo 'selected'; ?>>ELECTRIC</option>
</select>

<select name="max_mileage" style="padding: 12px; border: 1px solid #ddd;">
<option value="">ANY MILEAGE</option>
<option value="10000" <?php if($max_mileage == 10000) echo 'selected'; ?>>UNDER 10,000</option>
<option value="50000" <?php if($max_mileage == 50000) echo 'selected'; ?>>UNDER 50,000</option>
<option value="100000" <?php if($max_mileage == 100000) echo 'selected'; ?>>UNDER 100,000</option>
</select>

<select name="max_price" style="padding: 12px; border: 1px solid #ddd;">
<option value="">ANY PRICE</option>
<option value="50000" <?php if($max_price == 50000) echo 'selected'; ?>>UP TO $50,000</option>
<option value="100000" <?php if($max_price == 100000) echo 'selected'; ?>>UP TO $100,000</option>
<option value="500000" <?php if($max_price == 500000) echo 'selected'; ?>>UP TO $500,000</option>
</select>

<button type="submit" class="btn-submit" style="grid-column: span 4; padding: 15px; background: #1A2B3C; color: #fff; font-weight: bold; border: none; cursor: pointer; text-transform: uppercase;">Filter Certified Vehicles</button>
</form>
</div>
</div>

<div class="container" style="margin-top: 40px; margin-bottom: 80px;">
<div class="gallery-grid" style="display: grid; grid-template-columns: repeat(auto-fill, minmax(320px, 1fr)); gap: 30px;">
<?php 
if($result && mysqli_num_rows($result) > 0) {
while($row = mysqli_fetch_assoc($result)) { 
?>
<div class="vehicle-card" onclick="window.location='view_car.php?id=<?php echo $row['id']; ?>'" style="cursor:pointer; background:#fff; border: 1px solid #eee; padding:20px; box-shadow: 0 4px 6px rgba(0,0,0,0.05);">
<div class="img-container">
<img src="car_images/<?php echo $row['image_url']; ?>" style="width:100%; height:220px; object-fit:cover;" onerror="this.src='car_images/default.jpg'">
</div>
<div class="vehicle-info" style="margin-top: 20px;">
<span style="background:#0056B3; color:#fff; padding:4px 10px; font-size:11px; font-weight: bold;"><?php echo strtoupper($row['category']); ?></span>
<h3 style="margin: 15px 0 5px; font-size: 22px; color: #1A2B3C;"><?php echo strtoupper($row['brand'] . " " . $row['vehicle_name']); ?></h3>
<p style="margin:0; font-size:14px; color:#777; font-weight: bold;">YEAR: <?php echo $row['year']; ?> | MILEAGE: <?php echo number_format($row['mileage']); ?> UNITS</p>
<p style="margin:10px 0; font-weight: 900; color:#0056B3; font-size:24px;">$<?php echo number_format($row['price']); ?></p>
<div style="font-size:14px; border-top:1px solid #f1f1f1; padding-top:15px; margin-top:15px; color: #444;">
<strong>CONTACT:</strong> <?php echo $row['phone_number']; ?>
</div>
</div>
</div>
<?php 
}
} else {
echo "<div style='grid-column: 1/-1; text-align:center; padding:100px;'><h2>NO CARS FOUND</h2><p>Try changing your search or price range.</p></div>";
}
?>
</div>
</div>