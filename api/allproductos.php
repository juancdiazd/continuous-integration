<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "supermercado";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

mysqli_set_charset($conn, "utf8");

$productos_query = "SELECT producto.producto_id, producto.producto_nombre, producto.producto_precio, producto.producto_descuento, producto.producto_cantidad, categoria.categoria_nombre FROM producto LEFT JOIN categoria ON producto.categoria_id = categoria.categoria_id LIMIT 10";
$productos_resultado = mysqli_query($conn, $productos_query);

$productos = array();

while ($row = mysqli_fetch_assoc($productos_resultado)) {
  $productos[] = $row;
}

echo json_encode($productos);

header('Content-Type: application/json');

mysqli_close($conn);
?>