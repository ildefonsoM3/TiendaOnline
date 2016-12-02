<?php include "php/header.php" ?>
<br>
¿Ya eres usuario?<br>

<form action="php/logcliente.php" method="POST">
    <input type="text" name="usuario" placeholder="Name">
    <input type="text" name="contrasena" placeholder="Pass">
    <br>
    <input type="submit">
</form>

¿Eres nuevo usuario?<br>
<form action="php/nuevologclienteweb.php" method="POST">
    <input type="text" name="usuario" placeholder="usuario"><br>
    <input type="text" name="contrasena" placeholder="contraseña"><br>
    <input type="text" name="nombre" placeholder="nombre"><br>
    <input type="text" name="apellidos" placeholder="apellidos"><br>
    <input type="text" name="email" placeholder="email"><br>
    <input type="submit">
</form>


<?php include "php/footer.php" ?>