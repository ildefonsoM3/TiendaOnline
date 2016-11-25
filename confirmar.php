<?php include "php/header.php" ?>
<br>
¿Ya eres usuario?

<form action="php/logcliente.php" method="POST">
    <input type="text" name="usuario" placeholder="Name">
    <input type="text" name="contrasena" placeholder="Pass">
    <br>
    <input type="submit">
</form>

¿Eres nuevo usuario?


<?php include "php/footer.php" ?>