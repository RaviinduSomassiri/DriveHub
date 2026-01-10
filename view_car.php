<?php
include 'config.php';
include 'header.php';

$id = $_GET['id'];
$res = mysqli_query($conn, "SELECT * FROM vehicles WHERE id = $id");
$car = mysqli_fetch_assoc($res);
?>

<div class="container" style="margin-top:50px;">
<div style="display: flex; gap: 50px; background: #FFF; padding: 40px; border: 4px solid #1A2B3C; box-shadow: 20px 20px 0 #0056B3;">
    
    <div style="flex: 1;">
        <img src="car_images/<?php echo $car['image_url']; ?>" style="width: 100%; border: 10px solid #F1F4F8;">
        <h1 style="font-size: 40px; margin-top: 20px;"><?php echo strtoupper($car['brand'] . " " . $car['vehicle_name']); ?></h1>
        <p style="color: #0056B3; font-weight: 900;"><?php echo $car['year']; ?> | <?php echo strtoupper($car['fuel_type']); ?></p>
    </div>

    <div style="flex: 1;">
        <h2 style="border-bottom: 5px solid #0056B3; display: inline-block;">ASSET CONDITION</h2>
        
        <?php 
        $stats = [
            'Exterior Paint' => $car['cond_paint'],
            'Engine Health' => $car['cond_engine'],
            'Interior Quality' => $car['cond_interior'],
            'Tire Condition' => $car['cond_tires']
        ];

        foreach($stats as $label => $val) { ?>
            <div style="margin-bottom: 20px;">
                <div style="display: flex; justify-content: space-between; font-weight: 900;">
                    <span><?php echo $label; ?></span>
                    <span><?php echo $val; ?>%</span>
                </div>
                <div style="background: #EEE; height: 15px; width: 100%; margin-top: 5px;">
                    <div style="background: #0056B3; height: 100%; width: <?php echo $val; ?>%; transition: 1s;"></div>
                </div>
            </div>
        <?php } ?>

        <div style="margin-top: 40px; background: #1A2B3C; color: #FFF; padding: 20px; text-align: center;">
            <h3 style="margin: 0;">PRICE: $<?php echo number_format($car['price']); ?></h3>
            <p style="margin: 5px 0 0;">CONTACT: <?php echo $car['phone_number']; ?></p>
        </div>
    </div>
</div>
</div>