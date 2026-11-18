<?php
require_once 'db.php';

// Accetta solo richieste POST
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(["success" => false, "message" => "Unallowed method."]);
    exit();
}

// Legge i dati JSON inviati dal frontend React
$data = json_decode(file_get_contents("php://input"), true);

$name = trim($data['name'] ?? '');
$email = trim($data['email'] ?? '');
$message = trim($data['message'] ?? '');

// Controllo che i campi non siano vuoti
if (empty($name) || empty($email) || empty($message)) {
    http_response_code(400);
    echo json_encode(["success" => false, "message" => "Fill in all required fields"]);
    exit();
}

// Controllo formato email valido
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    http_response_code(400);
    echo json_encode(["success" => false, "message" => "Invalid email address"]);
    exit();
}

// Inserimento nel database
$stmt = $conn->prepare("INSERT INTO messages (sender_name, sender_email, message) VALUES (?, ?, ?)");
$stmt->bind_param("sss", $name, $email, $message);

if ($stmt->execute()) {
    echo json_encode(["success" => true, "message" => "Message sent successfully"]);
} else {
    http_response_code(500);
    echo json_encode(["success" => false, "message" => "Error saving the message"]);
}

$stmt->close();
$conn->close();
?>
