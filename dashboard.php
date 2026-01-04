<tr style="background: #007bff; color: white;">
    <th>ID</th>
    <th>Model</th>
    <th>Year</th> <th>Brand</th>
    <th>Category</th>
    <th>Price</th>
</tr>

<?php while($row = mysqli_fetch_assoc($result)) { ?>
<tr>
    <td><?php echo $row['id']; ?></td>
    <td><?php echo $row['vehicle_name']; ?></td>
    <td><b><?php echo $row['year_made']; ?></b></td> <td><?php echo $row['brand']; ?></td>
    <td><?php echo $row['category']; ?></td>
    <td>$<?php echo number_format($row['price']); ?></td>
</tr>
<?php } ?>