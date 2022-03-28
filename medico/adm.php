<?php
require 'conexion.php';
require 'navara.php';
require '1a.php';

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <link rel="stylesheet" href="pedido_adm.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
  </head>
  <body>
    <div class="cuerpo_ped_adm">
      <div class="nuevo_pedido">
        <h1>Ingrese Nuevo Pedido</h1>
        <form class="inputs_adm" action="zona.php" method="post">
          <input type="date" name="dia" required  />
          <input type="time" name="hora" placeholder="hora" required  />
          <input class="button" type="submit" value="Enviar">
        </form>
      </div>

  </body>
</html>
