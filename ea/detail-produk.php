<?php
    error_reporting(0);
    include'db.php';

    $kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1 ");
    $b = mysqli_fetch_object($kontak);

    $produk = mysqli_query($conn, "SELECT * FROM tb_product WHERE product_id ='".$_GET['id']."' ");
    $p = mysqli_fetch_object($produk);
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
        <h1><a href="index.php">EA Indonesia</a></h1>
            <u1>
               <li><a href ="produk.php">Produk</a></li>
               </u1>
        </div>
      </header>

        <!-- search -->
        <div class="search">
            <div class="container">
                <form action="produk.php">
                    <input type="text" name="search" placeholder="Cari Produk" value="<?php echo $_GET['search'] ?>">
                    <input type="hidden" name="kat" value="<?php echo $_GET['kat'] ?>">
                    <input type="submit" name="cari" value="Cari produk">
                </form>
            </div>
        </div>

        <!-- Product detail -->
        <div class="section">
            <div class="container">
                <h3>Detail Produk</h3>
                <div class="box">
                    <div class="col-2">
                        <img src="produk/<?php echo $p->product_image ?>" width="99%" >
                    </div>
                    <div class="col-2">
                        <h3><?php echo $p-> product_name ?></h3>
                        <h4>RP. <?php echo number_format($p-> product_price) ?></h4><br>
                        <p>Deskripsi : <br>
                            <?php echo $p-> product_description ?>
                        </p>
                        <p><a href="https://api.whatsapp.com/send?phone=<?php echo $b-> admin_telp ?>&text=Hallo, 
                                            Saya tertarik dengan game yang Anda jual." target="_blank">
                                            Bisa dengan Via Whatsapp <img src="img/icon-whatsapp.jpg" width="48px"> </a>
                        <p><a href="">Ataupun bisa Menggirim pesan melalui Email di bagian bawah. </a></p>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->
        <div class="footer">
            <div class="container">
                <h4>Alamat</h4>
                <p><?php echo $b-> admin_address?></p>

                <h4>Email</h4>
                <p><?php echo $b-> admin_email?></p>

                <h4>No.telp</h4>
                <p><?php echo $b-> admin_telp?></p>

                <small>Copyright &copy; 2021 - EA Indonesia.</small>
            </div>
        </div>
   </body>
</html>