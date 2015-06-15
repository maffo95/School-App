<?php
//verbinding maken
$db = new PDO('mysql:host=localhost; dbname=school app', 'root', '');

//tabel uitlezen
$sql = "SELECT * FROM leerlingen";
$resultaat = $db->query ($sql);

foreach ($resultaat as $rij) {
    echo $rij['Leerlingnummer']."<br>";
    echo $rij['Naam']."<br>";
    echo $rij['Klas']."<br>";
    echo $rij['Opleiding']."<br><br>";
}
?>