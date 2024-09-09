<?php
/**
 * Logs in a user based on the provided email and password.
 * 
 * @param string $_POST['email'] The email of the user.
 * @param string $_POST['password'] The password of the user.
 * 
 * @return JSON Response indicating success or failure.
 */

// 1. Include the database connection
require_once '../db.php';
$conn = connectMySQLi(); // or use connectPDO() if preferred

//code starts here

?>

