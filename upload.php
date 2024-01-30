<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $targetDir = 'pics/'; // Kaydetmek istediğiniz klasörün yolu
    $targetFile = $targetDir . basename($_FILES['picture']['name']); // Kaydetmek istediğiniz dosyanın tam yolu
    $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION)); // Dosya uzantısını alın

    // Sadece JPG ve PNG dosyalarını kabul edin
    if ($imageFileType == 'jpg' || $imageFileType == 'jpeg' || $imageFileType == 'png') {
        // Dosyayı belirtilen klasöre taşıyın
        if (move_uploaded_file($_FILES['picture']['tmp_name'], $targetFile)) {
            echo 'File uploaded successfully.';
        } else {
            echo 'An error occurred while uploading the file.';
        }
    } else {
        echo 'Only JPG and PNG files are accepted.';
    }
}
?> 