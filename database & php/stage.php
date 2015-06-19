<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title> </title>
		<link href="css/template.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<header>
			<a href="start.php"> <img src="images/roca12.png" align="left"></a>
			HOME
			<a href="admin.html"><img src="images/admin.png" width="40px" height="40px" align="right"></a>
		</header>
		
		<nav>
			<a href="start.php"> Home</a> | <a href="stage.php"> Stage</a>
			<hr>
		</nav>

		<section>
<!-- database connectie met php-->
				<?php
					
					//mysql_connect("localhost","root","");
					//mysql_select_db("school app") or die ("Kan de database niet openen");
					//$query = "SELECT * FROM leerlingen";
					//$resultaat = mysql_query($query) or die ("Er is iets mis met de database");

					//$html = "<h1>Leerling</h1>";
					//$html .= "<table border=1 align=center>";
					//$html .="<tr><td>Leerlingnummer</td><td>Naam</td><td>Klas</td><td>Opleiding</td><tr/>";

					//while($data = mysql_fetch_array($resultaat))
					//	{ 
					//		$html .= "<tr><td>" .$data['Leerlingnummer']. "</td><td>" .$data['Naam']. "</td><td>" .$data['Klas']. "</td><td>" .$data['Opleiding']. "</td></tr>";
					//	}
					//$html .= "</table>";
					//echo $html;
				?>
<!-- database connectie met pdo -->
				<?php
					//verbinding maken
					$db = new PDO('mysql:host=localhost; dbname=school app', 'root', '');

					//tabel uitlezen
					$sql = "SELECT * FROM stage";
					$resultaat = $db->query ($sql);

					foreach ($resultaat as $rij) {
						echo "Leerlingnummer: ";
					    echo $rij['Leerlingnummer']."<br>";
					    echo "Bedrijfsnaam: ";
					    echo $rij['Bedrijfsnaam']."<br>";
					    echo "Plaats: ";
					    echo $rij['Plaats']."<br>";
					    echo "Postcode: ";
					    echo $rij['Postcode']."<br>";
					    echo "Telefoonnummer: ";
					    echo $rij['Telefoonnummer']."<br>";
					    echo "E-mail: ";
					    echo $rij['E-mail']."<br>";
					    echo "Naam begeleider: ";
					    echo $rij['Naam begeleider']."<br>";
					    echo "Periode: ";
					    echo $rij['Periode']."<br>";
					    echo "Beoordeling: ";
					    echo $rij['Beoordeling']."<br><br>";
					}
				?>		
		</section>

		<footer>
			Copyright &copy; ROCA12 - 2015
		</footer>
	</body>
</html>