 <?php
session_start();

// Jika sudah login, langsung ke index
if (isset($_SESSION['username'])) {
    header("Location: index.php");
    exit;
}
?>
 <!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Sederhana</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: #f2f4f7;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .login-box {
      width: 320px;
      background: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h2 {
      margin-top: 0;
      text-align: center;
    }
    input {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      width: 100%;
      padding: 10px;
      background: #007bff;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background: #005fcc;
    }
  </style>
</head>
<body>

  <div class="login-box">
    <h2>Login</h2>
    <form method="POST" action="proses_login.php">
        <input type="text" name="username" placeholder="Username" required><br><br>
        <input type="password" name="password" placeholder="Password" required><br><br>
        <button type="submit">Login</button>
    </form>
  </div>

</body>
</html>
