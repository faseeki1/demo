<?php
/**
 * Fetch songs based on the given category.
 * 
 * @param string The category id to filter the songs.
 * 
 * @return JSON Response with the filtered songs or an error message.
 */

// 1. Include the database connection
require_once '../db.php';
$conn = connectMySQLi(); // or use connectPDO() if preferred

//code starts here



?>
