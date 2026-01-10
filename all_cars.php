<?php 
include 'config.php'; 
include 'header.php'; 

// Fetch cars for the user to see (Newest first)
$result = mysqli_query($conn, "SELECT * FROM vehicles ORDER BY id DESC");
?>

<div class="container">
<h1 style="text-align: left; margin-top: 30px;">Explore Our Collection</h1>
<p style="text-align: left; color: #666;">Quality vehicles available at DriveHub</p>

<div class="gallery-grid">
<?php while($row = mysqli_fetch_assoc($result)) { 
// NEW IMAGE LOGIC: Pulls the exact filename from the 'image_url' column
$imageName = $row['image_url'];
// Check if the image exists in the folder, otherwise show default
if (!empty($imageName) && file_exists("car_images/" . $imageName)) {
$imagePath = "car_images/" . $imageName;
} else {
$imagePath = "car_images/default.jpg";
}
?>
<div class="vehicle-card">
<img src="<?php echo $imagePath; ?>" alt="Car Image">
<div class="vehicle-info">
<span style="font-size: 12px; color: #d90429; font-weight: bold; text-transform: uppercase;"><?php echo $row['category']; ?></span>
<h3 class="vehicle-title"><?php echo $row['brand'] . " " . $row['vehicle_name']; ?></h3>
<p class="vehicle-details">
Year: <b><?php echo $row['year_made']; ?></b> | Fuel: <b><?php echo $row['fuel_type']; ?></b>
</p>
<div style="display: flex; justify-content: space-between; align-items: center;">
<span class="vehicle-price">$<?php echo number_format($row['price']); ?></span>
<a href="#" style="text-decoration: none; font-size: 14px; color: #d90429; border: 1px solid #d90429; padding: 5px 10px; border-radius: 5px;">View Details</a>
</div>
</div>
</div>
<?php } ?>
</div>
</div>