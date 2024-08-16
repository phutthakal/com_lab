<?php
header('Content-Type: application/json');

// เชื่อมต่อกับฐานข้อมูล MySQL
$servername = "localhost";
$username = "root"; // ชื่อผู้ใช้ฐานข้อมูล
$password = ""; // รหัสผ่านฐานข้อมูล
$dbname = "bme680_data"; // ชื่อฐานข้อมูล

$conn = new mysqli($servername, $username, $password, $dbname);

// ตรวจสอบการเชื่อมต่อ
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// รับค่าตัวกรองเซนเซอร์
$sensor = isset($_GET['sensor']) ? $_GET['sensor'] : '';

// สร้างคำสั่ง SQL สำหรับดึงข้อมูล
$sql = "SELECT timestamp, temperature, humidity, pressure, gas_resistance FROM sensor_data";

if ($sensor) {
    $sql .= " WHERE sensor_id = '$sensor'";
}

$sql .= " ORDER BY timestamp DESC LIMIT 6";

// ดึงข้อมูลจากฐานข้อมูล
$result = $conn->query($sql);

// สร้าง arrays เพื่อเก็บข้อมูลที่ได้จากฐานข้อมูล
$data = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
} else {
    echo json_encode(["error" => "No data found"]);
    exit;
}

$conn->close();

// ส่งข้อมูลในรูปแบบ JSON
echo json_encode($data);
?>
