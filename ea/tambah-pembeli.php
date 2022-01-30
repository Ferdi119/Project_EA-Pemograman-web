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
        <form action="" method="post" enctype="multipart/form-data">
                    <select class="input-control" name="produk" required>
                            <option value="">-- Pilih --</option>
                             <?php
                                $produk = mysqli_query($conn, "SELECT * FROM tb_product ORDER BY product_id DESC");
                                while ($e = mysqli_fetch_array ($produk)){
                             
                             ?>
                                <option value="<?php echo $e['product_id'] ?>"><?php echo $e['product_name'] ?></option>
                             <?php } ?>
                    </select>

                    <input type="text" name="nama" class="input-control" placeholder="Nama Pembeli" required>            
                    <select name="status" class="input-control">
                                    <option value="">--Pilih--</option>
                                    <option value="1">Terjual</option>
                                    <option value="0">Tidak Terjual</option>
                    </select>
            <input type="submit" name="submit" value="submit" class="btn">
         </form>
                    <?php
                        if(isset($_POST['submit'])){

                            $produk    =    $_POST ['produk'];
                            $nama      =    $_POST ['nama'];
                            $status    =    $_POST ['status'];

                            $insert = mysqli_query($conn, "INSERT INTO tb_buyer VALUES (
                                                null,
                                                '".$produk."',
                                                '".$nama."',
                                                '".$status."',
                                                null
                                                    ) ");
                            if ($insert){
                                echo '<script>alert ("Tambah Pembeli Berhasil")</script>';
                                echo '<script>window.location= "dt-pembeli.php"</script>';
                            }else {
                                echo 'gagal' .mysqli_error($conn);
                            }
                        }

                    ?>
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