<?php
$producto_id = $_GET['producto_id'];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "supermercado";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

mysqli_set_charset($conn, "utf8");

$productos_query = "SELECT * FROM producto WHERE producto_id = $producto_id";
$productos_resultado = mysqli_query($conn, $productos_query);

$productos = array();

while ($row = mysqli_fetch_assoc($productos_resultado)) {
  $productos[] = $row;
}

echo json_encode($productos);

header('Content-Type: application/json');

mysqli_close($conn);
?>