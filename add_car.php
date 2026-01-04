<?php 
include 'config.php'; // The brain
include 'header.php'; // The look
?>

<h2>List a New Vehicle</h2>
<form method="POST">
    Name: <input type="text" name="v_name" required><br><br>
    Brand: <input type="text" name="v_brand" required><br><br>
    Price: <input type="number" name="v_price" required><br><br>
    <button type="submit" name="save">Add to Garage</button>
</form>

<?php
if(isset($_POST['save'])) {
    $name = $_POST['v_name'];
    $brand = $_POST['v_brand'];
    $price = $_POST['v_price'];

    // This is the SQL command to "Add" to the database (Web 7)
    $sql = "INSERT INTO vehicles (vehicle_name, brand, price) VALUES ('$name', '$brand', '$price')";
    
    if(mysqli_query($conn, $sql)) {
        echo "<p style='color:green;'>Car added successfully!</p>";
    }
}
?>