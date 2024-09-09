<?php
/**
 * Fetch all songs from the database.
 * 
 * @return JSON Response with all the available songs or an error message.
 */

// 1. Include the database connection
require_once '../db.php';
$conn = connectMySQLi(); // or use connectPDO() if preferred

//code starts here
?>
