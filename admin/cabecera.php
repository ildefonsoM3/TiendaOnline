<?php 

session_start();
if(!isset($_SESSION['contador'])){
    $_SESSION['contador'] = 0;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/estiloadmin.css" '>
    <title>Tienda</title>
</head>
<body>
    <div id="contenedor">
        <header>
            <a href="index.php"><h1>Panel de control</h1></a>
            <h2>Productos de Artesanías</h2>
            <a href="pedidos.php" class="botonmenu">Gestionar pedidos</a>
            <a href="clientes.php" class="botonmenu">Gestionar clientes</a>
            <a href="productos.php" class="botonmenu">Gestionar productos</a>
            <a href="estadisticas.php" class="botonmenu">Obtener Estadísticas</a>
            <div style="clear:both;"></div>
        </header>
        
        <section>
        