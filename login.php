<?php
// Conectar ao banco de dados
$servername = "localhost";
$username = "seu_usuario";
$password = "sua_senha";
$dbname = "login";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Obter os dados do formulário
$username = $_POST['username'];
$password = $_POST['password'];

// Consulta SQL para verificar as credenciais
$sql = "SELECT * FROM Usuario WHERE nome_usuario='$username' AND senha='$password'";
$result = $conn->query($sql);

// Verificar se a consulta retornou resultados
if ($result->num_rows > 0) {
    // Autenticação bem-sucedida
    echo "Login bem-sucedido!";
} else {
    // Autenticação falhou
    echo "Nome de usuário ou senha incorretos.";
}

$conn->close();
?>
