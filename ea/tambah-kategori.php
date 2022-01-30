<?php

    session_start();
    include 'db.php';
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
            <h3>Tambah Data Kategori</h3>
            <div class="box">
                <form action="" method="post">
                    <input type="text" name="nama" placeholder="Nama Kategori" class="input-control" required>
                    <input type="submit" name="submit" value="submit" class="btn">
                </form>
                    <?php
                        if(isset($_POST['submit'])){

                            $nama = ucwords($_POST['nama']);

                            $insert = mysqli_query($conn, "INSERT INTO tb_category VALUES (
                                                null,
                                                '".$nama."') ");
                            if ($insert){
                                echo '<script>alert ("Tambah Data Berhasil")</script>';
                                echo '<script>window.location= "dt-kategori.php"</script>';
                            }else {
                                echo 'gagal' .mysqli_error($conn);
                            }
                        }

                    ?>
            </div>           
        </div>
    </div>
    <!-- footer -->
        <footer>
            <div class="container">
                <small>Copyright &copy; 2021 - EA Indonesia.</small>
            </div>
        </footer>
</body>
</html>