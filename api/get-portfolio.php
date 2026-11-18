<?php
require_once 'db.php';

$response = [];

// Informazioni profilo (Hero, About, Footer)
$resProfile = $conn->query("SELECT * FROM profile_info WHERE id = 1");
$response['profile'] = $resProfile ? $resProfile->fetch_assoc() : null;

// Link dei Social
$resSocials = $conn->query("SELECT * FROM social_links");
$response['socials'] = $resSocials ? $resSocials->fetch_all(MYSQLI_ASSOC) : [];

// Skills
$resSkills = $conn->query("SELECT * FROM skills");
$response['skills'] = $resSkills ? $resSkills->fetch_all(MYSQLI_ASSOC) : [];

// Certificati
$resCerts = $conn->query("SELECT * FROM certificates ORDER BY date_year DESC");
$response['certificates'] = $resCerts ? $resCerts->fetch_all(MYSQLI_ASSOC) : [];

// Progetti
$resProjects = $conn->query("SELECT * FROM projects ORDER BY id DESC");
$projects = [];
if ($resProjects) {
    while ($row = $resProjects->fetch_assoc()) {
        $row['tags'] = !empty($row['tags']) ? array_map('trim', explode(',', $row['tags'])) : [];
        $projects[] = $row;
    }
}
$response['projects'] = $projects;

// Stampa il risultato in formato JSON
echo json_encode($response);

$conn->close();
?>
