<?php

include '../vendor/autoload.php';

$conn = new PDO('mysql:host=mysql;dbname=php', 'root', '123456');

$stmt = $conn->prepare('SELECT nome FROM empresa LIMIT 0,1');
$stmt->execute();

$versaoPhp = explode('.', phpversion());

$rec = $stmt->fetch();
echo $rec['nome'] . '|' .
	 $versaoPhp[0].$versaoPhp[1];
