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

    $sensor_id = isset($_GET['sensor_id']) ? $_GET['sensor_id'] : '';
    $start_time = isset($_GET['start_time']) ? $_GET['start_time'] : '';
    $end_time = isset($_GET['end_time']) ? $_GET['end_time'] : '';

    // แปลงรูปแบบวันที่และเวลาให้ตรงกับรูปแบบที่ MySQL ต้องการ
    $start_time = str_replace('T', ' ', $start_time) . ':00';
    $end_time = str_replace('T', ' ', $end_time) . ':00';

    // ป้องกัน SQL Injection
    $sensor_id = $conn->real_escape_string($sensor_id);
    $start_time = $conn->real_escape_string($start_time);
    $end_time = $conn->real_escape_string($end_time);

    // สร้าง SQL query โดยพิจารณาจาก sensor_id ถ้ามีการเลือก
    $sql = "SELECT sensor_id, temperature, humidity, pressure, gas_resistance, timestamp 
            FROM sensor_data 
            WHERE timestamp BETWEEN '$start_time' AND '$end_time'";

    if (!empty($sensor_id)) {
        $sql .= " AND sensor_id = '$sensor_id'";
    }

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<p>Sensor ID: " . $row["sensor_id"];
            echo "<br>Temperature: " . $row["temperature"]. " °C";
            echo "<br>Humidity: " . $row["humidity"]. " %";
            echo "<br>Pressure: " . $row["pressure"]. " hPa";
            echo "<br>Gas Resistance: " . $row["gas_resistance"]. " Ohm";
            echo "<br>Timestamp: " . $row["timestamp"]. "</p><hr>";
        }
    } else {
        echo "No results found.";
    }
    $conn->close();
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
