<?php
/**
 * Register a new user in the system.
 * 
 * @param string $_POST['name'] The name of the new user.
 * @param string $_POST['email'] The email address of the new user.
 * @param string $_POST['password'] The password of the new user.
 * 
 * @return JSON Response indicating success or failure.
 */

// 1. Include the database connection
require_once '../db.php';
$conn = connectDB(); // or use connectPDO() if preferred

//code starts here

?>
