<?php
// เชื่อมต่อกับฐานข้อมูล MySQL
$mysqli = new mysqli("localhost", "root", "", "bme680_data");

// ตรวจสอบการเชื่อมต่อ
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// ดึงข้อมูล sensor_id จากฐานข้อมูล
$sql = "SELECT DISTINCT sensor_id FROM sensor_data";
$result = $mysqli->query($sql);

// สร้างอาร์เรย์เพื่อเก็บข้อมูล sensor_id
$sensors = array();
while ($row = $result->fetch_assoc()) {
    $sensors[] = $row;
}

// ส่งข้อมูลเป็น JSON
header('Content-Type: application/json');
echo json_encode($sensors);

// ปิดการเชื่อมต่อ MySQL
$mysqli->close();
?>
