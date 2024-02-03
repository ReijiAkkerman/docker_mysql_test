<?php
	$mysql = new mysqli('127.0.0.1', 'root', 'KisaragiEki4');
	$data = $mysql->query("show databases");
	foreach($data as $row) {
		echo $row ['Database'] . "\n";
	}
