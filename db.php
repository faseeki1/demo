<?php
/**
 * Database connection script using both MySQLi and PDO.
 *
 * 
 * Instructions:
 * - This script offers two ways to connect to the database: MySQLi and PDO.
 * - You can choose either `connectMySQLi()` or `connectPDO()` in your scripts for database interaction.
 */

require_once 'config.php';  // Include the configuration file

/**
 * MySQLi connection
 * 
 * @return mysqli
 */
function connectDB() {
    // Create MySQLi connection
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

    // Check MySQLi connection
    if ($conn->connect_error) {
        die("MySQLi Connection failed: " . $conn->connect_error);
    }

    return $conn;
}

/**
 * PDO connection
 * 
 * @return PDO
 */
function connectPDO() {
    try {
        // Create PDO connection
        $dsn = 'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME;
        $options = [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES   => false,
        ];
        
        $pdo = new PDO($dsn, DB_USER, DB_PASS, $options);

        return $pdo;
    } catch (PDOException $e) {
        // Handle connection error
        die("PDO Connection failed: " . $e->getMessage());
    }
}

?>
