<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bme680_data";

try {
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        throw new Exception("Connection failed: " . $conn->connect_error);
    }

    $sensor_id = isset($_GET['sensor_id']) ? intval($_GET['sensor_id']) : 1; // ค่าเริ่มต้นเป็น Sensor 1

    $sql = "SELECT temperature, humidity, pressure, gas_resistance, timestamp 
            FROM sensor_data 
            WHERE sensor_id = $sensor_id 
            ORDER BY timestamp DESC 
            LIMIT 1";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo json_encode($row);
    } else {
        echo json_encode(["temperature" => "N/A", "humidity" => "N/A", "pressure" => "N/A", "gas_resistance" => "N/A", "timestamp" => "N/A"]);
    }

    $conn->close();
} catch (Exception $e) {
    echo json_encode(["error" => $e->getMessage()]);
}
?>
