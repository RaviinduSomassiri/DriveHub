<?php
if (session_status() === PHP_SESSION_NONE) {
session_start();
}

// SECURITY: ONLY ALLOW LOGGED IN ADMINS
if (!isset($_SESSION['user_id'])) {
header("Location: login_register.php");
exit();
}

include 'config.php';
include 'header.php';

// READ: FETCH VEHICLE DATA FROM DATABASE
$query = "SELECT * FROM vehicles ORDER BY id DESC";
$result = mysqli_query($conn, $query);
?>

<div class="container" style="margin-top: 50px; margin-bottom: 100px;">
<div style="border-left: 10px solid #0056B3; padding-left: 20px; margin-bottom: 40px;">
<h1 style="font-size: 50px; font-weight: 900; text-transform: uppercase; color: #1A2B3C; margin: 0;">
MANAGE <span style="color: #0056B3;">GARAGE</span>
</h1>
<p style="color: #666; font-weight: 800; letter-spacing: 2px;">ELITE ADMINISTRATOR PANEL</p>
</div>

<div style="margin-bottom: 30px;">
<a href="add_car.php" class="btn-submit" style="display: inline-block; width: auto; padding: 15px 40px; text-decoration: none;">
+ DEPLOY NEW ASSET
</a>
</div>

<div style="background: #FFFFFF; border: 4px solid #1A2B3C; box-shadow: 15px 15px 0px #0056B3; overflow-x: auto;">
<table style="width: 100%; border-collapse: collapse; color: #1A2B3C;">
<thead>
<tr style="background: #1A2B3C; color: #FFF; text-transform: uppercase; font-weight: 900;">
<th style="padding: 20px; text-align: left;">PREVIEW</th>
<th style="padding: 20px; text-align: left;">SPECIFICATIONS & CONTACT</th>
<th style="padding: 20px; text-align: left;">PRICE</th>
<th style="padding: 20px; text-align: center;">COMMANDS</th>
</tr>
</thead>
<tbody>
<?php if(mysqli_num_rows($result) > 0): ?>
<?php while($row = mysqli_fetch_assoc($result)): ?>
<tr style="border-bottom: 2px solid #F1F4F8; transition: 0.3s;" onmouseover="this.style.background='#F8F9FA'" onmouseout="this.style.background='transparent'">
<td style="padding: 20px; width: 180px;">
<img src="car_images/<?php echo $row['image_url']; ?>" 
style="width: 150px; height: 100px; object-fit: cover; border: 2px solid #EEE;"
onerror="this.src='car_images/default.jpg'">
</td>
<td style="padding: 20px;">
<span style="font-size: 22px; font-weight: 900; display: block; color: #1A2B3C;">
<?php echo strtoupper($row['brand'] . " " . $row['vehicle_name']); ?>
</span>
<span style="color: #0056B3; font-weight: 800; font-size: 13px; display: block; margin-top: 5px;">
CATEGORY: <?php echo strtoupper($row['category']); ?> | ID: #<?php echo $row['id']; ?>
</span>
<span style="display: block; margin-top: 8px; font-size: 14px; font-weight: 900; color: #555;">
CONTACT: <?php echo $row['phone_number']; ?>
</span>
</td>
<td style="padding: 20px;">
<span style="font-size: 24px; font-weight: 900; color: #0056B3;">$<?php echo number_format($row['price']); ?></span>
</td>
<td style="padding: 20px; text-align: center;">
<a href="edit_car.php?id=<?php echo $row['id']; ?>" style="color: #FFF; text-decoration: none; font-weight: 900; background: #1A2B3C; padding: 12px 25px; margin-right: 5px; font-size: 11px;">EDIT</a>
<a href="delete_car.php?id=<?php echo $row['id']; ?>" style="color: #FFF; text-decoration: none; font-weight: 900; background: #FF4444; padding: 12px 25px; font-size: 11px;" onclick="return confirm('DESTROY RECORD #<?php echo $row['id']; ?>?')">DELETE</a>
</td>
</tr>
<?php endwhile; ?>
<?php else: ?>
<tr>
<td colspan="4" style="padding: 50px; text-align: center; color: #666; font-weight: 900;">DATABASE EMPTY.</td>
</tr>
<?php endif; ?>
</tbody>
</table>
</div>
</div>