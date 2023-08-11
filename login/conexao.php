<?php

define('HOST', '127.0.0.1');
define('USUARIO','root');
define('SENHABD', '');
define('BD', 'etec');

$conexao = mysqli_connect(HOST,USUARIO,SENHABD,BD) or 
die("Não conectou ao Banco de dados mariadb");
