<?php
header("Content-Type: application/xml; charset=UTF-8");
include 'koneksi.php';

$lokasi = isset($_GET['lokasi']) ? $_GET['lokasi'] : '';
$nama = isset($_GET['nama']) ? $_GET['nama'] : '';

$query = "SELECT * FROM objek_wisata WHERE 1";

if($lokasi) {
    $query .= " AND lokasi='$lokasi'";
}

if($nama) {
    $query .= " AND nama='$nama'";
}

$result = mysqli_query($koneksi, $query);
if (!$result) {
    die('Query error: ' . mysqli_error($koneksi));
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'tambah') {
    $nama = $_POST['nama'];
    $lokasi = $_POST['lokasi'];
    $deskripsi = $_POST['deskripsi'];

    $query = "INSERT INTO objek_wisata (nama, lokasi, deskripsi) VALUES ('$nama', '$lokasi', '$deskripsi')";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data berhasil ditambahkan! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . "</error>";
    }
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'edit') {
    $nama = $_POST['nama'];
    $lokasi = $_POST['lokasi'];
    $deskripsi = $_POST['deskripsi'];

    $query = "UPDATE objek_wisata SET nama='$nama', lokasi='$lokasi', deskripsi='$deskripsi' WHERE id=$id";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data berhasil diupdate! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'hapus') {
    $id = $_POST['id'];

    $query = "DELETE FROM warga WHERE id=$id";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data berhasil dihapus! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}


$xml = new SimpleXMLElement('<objek_wisata/>');

while ($row = mysqli_fetch_assoc($result)) {
    $wisata = $xml->addChild('objek_wisata');
    $wisata->addChild('id', $row['id']);
    $wisata->addChild('nama', $row['nama']);
    $wisata->addChild('lokasi', $row['lokasi']);
    $wisata->addChild('deskripsi', $row['deskripsi']);
}

echo $xml->asXML();
?>