<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bme680_data";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get POST data
$sensor_name = $_POST['sensor_name'];
$temperature = $_POST['temperature'];
$humidity = $_POST['humidity'];
$pressure = $_POST['pressure'];
$gas_resistance = $_POST['gas_resistance'];

// Prepare SQL statement
$sql = "INSERT INTO sensor_data (sensor_name, temperature, humidity, pressure, gas_resistance) 
        VALUES ('$sensor_name', '$temperature', '$humidity', '$pressure', '$gas_resistance')";

// Execute SQL statement
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Close connection
$conn->close();
?>
