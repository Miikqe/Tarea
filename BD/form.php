<?php
  echo '<link rel="stylesheet" href="form.css">';
  $conexion= mysqli_connect('localhost','root','','ETEC');
  if(!$conexion){
    echo mysqli_conect_error();
    echo mysqli_connect_errno();
  }
  $busq=$_POST["cons"];
  $val=$_POST["val"];
  $consulta="SELECT * FROM alumnos WHERE ".$busq."="."'$val'";
  $respuesta=mysqli_query($conexion,$consulta);
  echo
    "<table>
      <tr>
        <td>Número de Cuenta<td>
        <td>Apellido Paterno<td>
        <td>Apellido Materno<td>
        <td>Nombre(s)<td>
        <td>Clave Opción Técnica<td>
      </tr>";
  while($row=mysqli_fetch_array($respuesta,MYSQLI_NUM)){
    echo "<tr>";
    for($i=0;$i<count($row);$i++){
      echo "<td>".$row[$i]."</td>";
    }
    echo "</tr>";
  }
  echo "</table>";
?>
