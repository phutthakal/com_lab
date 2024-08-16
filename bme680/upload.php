<?php
header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "testbme680";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// รับค่าจาก POST request
$sensor_name = isset($_POST['sensor_name']) ? $_POST['sensor_name'] : '';
$temperature = isset($_POST['temperature']) ? floatval($_POST['temperature']) : 0;
$humidity = isset($_POST['humidity']) ? floatval($_POST['humidity']) : 0;
$pressure = isset($_POST['pressure']) ? floatval($_POST['pressure']) : 0;
$gas_resistance = isset($_POST['gas_resistance']) ? floatval($_POST['gas_resistance']) : 0;

// ตรวจสอบให้แน่ใจว่าค่าที่รับมาถูกต้อง
if (empty($sensor_name) || !is_numeric($temperature) || !is_numeric($humidity) || !is_numeric($pressure) || !is_numeric($gas_resistance)) {
    echo json_encode(['status' => 'error', 'message' => 'Invalid input']);
    exit();
}

// เตรียมคำสั่ง SQL
$sql = "INSERT INTO sensor_data (sensor_name, temperature, humidity, pressure, gas_resistance, timestamp) 
        VALUES (?, ?, ?, ?, ?, NOW())";
$stmt = $conn->prepare($sql);
if ($stmt === false) {
    die("Prepare failed: " . $conn->error);
}

// กำหนดประเภทของข้อมูลที่ต้องการผูก
$stmt->bind_param('sdddd', $sensor_name, $temperature, $humidity, $pressure, $gas_resistance);

// Execute the query
if ($stmt->execute()) {
    echo json_encode(['status' => 'success']);
} else {
    echo json_encode(['status' => 'error', 'message' => $stmt->error]);
}

$stmt->close();
$conn->close();
?>
