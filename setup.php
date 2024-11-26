<?php
$conn = new mysqli('localhost', 'root', '', '');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Lê o conteúdo do arquivo banco.sql
$sql = file_get_contents('banco.sql');

if ($conn->multi_query($sql)) {
    echo "Banco de dados configurado com sucesso!";
} else {
    echo "Erro ao configurar o banco de dados: " . $conn->error;
}

$conn->close();
?>
