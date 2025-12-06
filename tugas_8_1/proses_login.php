<?php
session_start();
include "koneksi.php";

// Ambil input
$username = trim($_POST['username']);
$password = md5(trim($_POST['password'])); // harus sama dengan di database

// Query
$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
$result = mysqli_query($conn, $query);

// Cek hasil
if (mysqli_num_rows($result) > 0) {

    $_SESSION['username'] = $username;

    header("Location: index.php");
    exit();

} else {
    header("Location: login.php?error=1");
    exit();
}
?>
