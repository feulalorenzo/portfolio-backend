<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json; charset=UTF-8");

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

$host = "sql103.infinityfree.com";
$user = "if0_43473536";
$pass = "ACTfc0EUAD6Q";
$db   = "if0_43473536_db_portfolio";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(["error" => "Connessione fallita: " . $conn->connect_error]);
    exit();
}

$conn->set_charset("utf8mb4");
?>
