<?php

    session_start();
    if($_SESSION['status_login'] != true){
        echo '<script>window.location="login.php"</script>';
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EA Indonesia</title>
    <link rel="stylesheet" type = "text/css" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&display=swap" rel="stylesheet">
</head>
<body>
    <!-- header -->
      <header>
        <div class="container">
        <h1><a href="dashboard.php">EA Indonesia</a></h1>
            <u1>
               <li><a href ="dashboard.php">Dashboard</a></li>
               <li><a href ="profil.php">Profil</a></li>
               <li><a href ="dt-kategori.php">Data kategori</a></li>
               <li><a href ="dt-produk.php">Data produk</a></li>
               <li><a href="dt-pembeli.php">Data Pembeli</a></li>
               <li><a href ="keluar.php">Keluar</a></li>
            </u1>
        </div>
      </header>
    <!-- content -->
    <div class="section">
        <div class="container">
            <h3>Dashboard</h3>
            <div class="box">
                <h4>Selamat datang <?php echo $_SESSION['a_global']-> admin_name ?> di Toko online</h4>
            </div>
        </div>
    </div>
    

    <div class="section">
        <div class="video">
            <video width="36%" controls repeat>
                <source src="./video/EA Games.mp4">
            </video>
        </div>
        <div>
    </div>

    <!-- footer -->
        <footer>
            <div class="container">
                <small>Copyright &copy; 2021 - EA Indonesia.</small>
            </div>
        </footer>
</body>
</html>