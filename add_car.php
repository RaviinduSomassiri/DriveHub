<?php
session_start();
include 'config.php';
include 'header.php';

// Check if user is logged in
if(!isset($_SESSION['user_id'])){
    echo "<p style='color:red;'>Please log in first!</p>";
    exit;
}

$user_id = $_SESSION['user_id'];
$message = "";

// Handle form submission
if(isset($_POST['save'])){
    $name = $_POST['v_name'];
    $brand = $_POST['v_brand'];
    $price = $_POST['v_price'];
    $year = $_POST['v_year'];
    $category = $_POST['v_category'];
    $fuel = $_POST['v_fuel'];
    $mileage = $_POST['v_mileage'];

    // Prepared statement to prevent SQL injection
    $stmt = $conn->prepare("INSERT INTO vehicles (user_id, vehicle_name, brand, price, year_made, category, fuel_type, mileage) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("issdisis", $user_id, $name, $brand, $price, $year, $category, $fuel, $mileage);

    if($stmt->execute()){
        $message = "<p style='color:green;'>Vehicle added successfully!</p>";
    } else {
        $message = "<p style='color:red;'>Error: " . $stmt->error . "</p>";
    }
    $stmt->close();
}
?>

<div class="form-container" style="max-width:600px; margin:20px auto; padding:20px; background:white; box-shadow:0 4px 8px rgba(0,0,0,0.05); border-radius:8px;">
    <h2>Add a New Vehicle</h2>
    <?php if($message) echo $message; ?>
    <form method="POST">
        <label>Vehicle Name:</label><br>
        <input type="text" name="v_name" required><br><br>

        <label>Brand:</label><br>
        <input type="text" name="v_brand" required><br><br>

        <label>Price ($):</label><br>
        <input type="number" name="v_price" step="0.01" required><br><br>

        <label>Year:</label><br>
        <input type="number" name="v_year" min="1900" max="2100" required><br><br>

        <label>Category:</label><br>
        <input type="text" name="v_category"><br><br>

        <label>Fuel Type:</label><br>
        <input type="text" name="v_fuel"><br><br>

        <label>Mileage:</label><br>
        <input type="number" name="v_mileage" min="0"><br><br>

        <button type="submit" name="save" style="background:#007bff; color:white; padding:10px 20px; border:none; border-radius:5px; cursor:pointer;">Add Vehicle</button>
    </form>
</div>
