<?php
// Se obtienen las variables de la URL
$producto_nombre = $_POST['producto_nombre'];
$producto_descripcion = $_POST['producto_descripcion'];
$producto_precio = $_POST['producto_precio'];
$producto_cantidad = $_POST['producto_cantidad'];
$producto_descuento = $_POST['producto_descuento'];
$producto_imagen = $_FILES['producto_imagen'];
$producto_categoria = $_POST['producto_categoria'];

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

if(isset($_FILES['producto_imagen'])) {
    $target_dir = "../images/productos/$producto_categoria/";
    $target_file = $target_dir . basename($_FILES['producto_imagen']['name']); 
    if (file_exists($target_file)) {
      echo "El archivo ya existe.";
    } else {
      if (move_uploaded_file($_FILES['producto_imagen']['tmp_name'], $target_file)) {

        // QUERY para insertar nuevos productos a la DB
        $sql = "INSERT INTO producto (producto_nombre, producto_descripcion, producto_precio, producto_cantidad, producto_descuento, producto_imagen, categoria_id) VALUES ('$producto_nombre', '$producto_descripcion', '$producto_precio', '$producto_cantidad', '$producto_descuento', '$target_file', '$producto_categoria')";
  
        if(mysqli_query($conn, $sql)){
           header("Location: ../pages/Crud/crud.html");
        } else{
          echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
        }
      } else {
        echo "Hubo un problema subiendo la imagen.";
      }
    }
  } else {
    echo "No se subio ningun archivo.";
  }

$conn->close();
?>