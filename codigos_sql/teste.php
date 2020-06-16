<html>
	<head>
	<title>Extraindo dados de um  Banco de Dados</title>
	</head>
	<body>

	<?php
	// Conexão com o Banco de Dados
	mysql_connect("localhost", "mario", "mario") or die (mysql_error ());

	// Seleciona o Banco de Dados
	mysql_select_db("bcd") or die(mysql_error());

	//query SQL
	$strSQL = "SELECT * FROM aluno";

	// Executa a query (o recordset $rs contém o resultado da query)
	$rs = mysql_query($strSQL);
	
	// Loop pelo recordset $rs
	// Cada linha vai para um array ($row) usando mysql_fetch_array
	while($row = mysql_fetch_array($rs)) {

	   // Escreve o valor da coluna FirstName (que está no array $row)
	  echo $row "<br />";

	  }

	// Encerra a conexão
	mysql_close();
	?>
	</body>
	</html>
