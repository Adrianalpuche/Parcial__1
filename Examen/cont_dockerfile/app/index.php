<html>

<body>
<?php
$enlace = mysqli_connect("host.docker.internal", "root","27pi9juk769as21", "ventas2", "3333");

if (!$enlace) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

$sqlQuery = "SELECT * from cliente";
$ob = mysqli_query($enlace,$sqlQuery);
mysqli_close($enlace);

?>
tfytdt
</body>
</html>