<?php
session_start();

// CLEAR ALL SESSION DATA
session_unset();

// DESTROY THE SESSION
session_destroy();

// REDIRECT TO MARKETPLACE
header("Location: home.php");
exit();
?>