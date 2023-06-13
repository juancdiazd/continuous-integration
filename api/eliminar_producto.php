<?php
// Se obtiene la id del producto a eliminar
$producto_id = $_GET['producto_id'];

// Se inician las variables para la conexión con la DB
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "supermercado";

$conn = new mysqli($servername, $username, $password, $dbname);

// Se valida si la conexión fue exitosa, si no se arroja error
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// QUERY para obtener la imagen del producto que se va a eliminar y eliminarla localmente
$sql = "SELECT producto_imagen FROM producto WHERE producto_id = $producto_id";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  $row = mysqli_fetch_assoc($result);
  $image_path = $row["producto_imagen"];
  // Se elimina la imagen relacionada con el producto si esta existe
  if (file_exists($image_path)) {
    unlink($image_path);
  }
  // QUERY para eliminar el producto que tenga la misma id que el seleccionado
  $sql = "DELETE FROM producto WHERE producto_id = $producto_id";

  if (mysqli_query($conn, $sql)) {
    echo "Product deleted successfully.";
  } else {
    echo "Error deleting product: " . mysqli_error($conn);
  }
} else {
  echo "Producto no encontrado.";
}
mysqli_close($conn);
?>