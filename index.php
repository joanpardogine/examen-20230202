<?php
$mysqli = new mysqli("db","root","secret","ginebroDam");

$sql = "SELECT PROFESSORS.nomProfe, PROFESSORS.cognomProfe, MODULS.nomModul\n"
    . "FROM PROFESSORS\n"
    . " LEFT JOIN MODULS ON MODULS.codiProfe = PROFESSORS.codiProfe\n"
    . "    ORDER BY MODULS.nomModul;";

// Check connection
if ($mysqli -> connect_errno) {
  echo "Ha fallat la connexió amb el MySQL: " . $mysqli -> connect_error;
  exit();
}

$result = mysqli_query($mysqli, $sql);

// * fetch associative array */
while ($row = mysqli_fetch_row($result)) {
    printf("<p>El professor %s %s fa classe de %s.</p>", $row[0], $row[1], $row[2]);
}

$mysqli -> close();
?>