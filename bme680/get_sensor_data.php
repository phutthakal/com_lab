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

$sensor_name = isset($_GET['sensor_name']) ? $_GET['sensor_name'] : '';

// Validate sensor_name input
if (empty($sensor_name)) {
    echo json_encode(['status' => 'error', 'message' => 'No sensor name provided']);
    exit;
}

$sql = "SELECT * FROM sensor_data WHERE sensor_name = ? ORDER BY timestamp DESC LIMIT 1";
$stmt = $conn->prepare($sql);
if (!$stmt) {
    echo json_encode(['status' => 'error', 'message' => 'SQL prepare failed: ' . $conn->error]);
    exit;
}

$stmt->bind_param('s', $sensor_name);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    echo json_encode(['status' => 'error', 'message' => 'No data found for the sensor']);
    exit;
}

$data = $result->fetch_assoc();
echo json_encode($data);

$stmt->close();
$conn->close();
?>
