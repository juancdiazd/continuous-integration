<?php
$user = $_POST["usuario"];
$pass = $_POST["contrasena"];

$dbhost ="localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "supermercado";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
if (!$conn)
{
    die("No hay conexion:".mysqli_connect_error());
}

$sql = "SELECT * FROM usuarios WHERE username = '$user' AND password =  '$pass' AND role = 'administrador'";
$resultado = mysqli_query($conn,$sql);

if ($resultado !== false) {
    $nr = mysqli_num_rows($resultado);
    if ($nr == 1) {
        header("Location: ../Crud/crud.html");
    } else {
        header("Location: administrador.html");
    }
} else {
    die("Error en la consulta: " . mysqli_error($conn));
}
mysqli_close($conn);
    
?>