<?php
    include'db.php';

    $kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1 ");
    $b = mysqli_fetch_object($kontak);
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
                    <input type="text" name="search" placeholder="Cari Produk">
                    <input type="submit" name="cari" value="Cari produk">
                </form>
            </div>
        </div>

        <!-- category -->
        <div class="section">
            <div class="container">
                <h3>Kategori Game</h3>
                <div class="box">
                    <?php
                        $kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC ");
                        if(mysqli_num_rows($kategori) > 0){
                            while ($k = mysqli_fetch_array($kategori) ){

                    ?>

                        <a href="produk.php?kat=<?php echo $k['category_id'] ?>">
                            <div class="col-5">
                                <img src="img/icon-kategori.png" width="50px" style="margin-bottom:5px" >
                                <p><?php echo $k['category_name'] ?></p>
                            </div>
                        </a>
                    <?php } } else {?>

                        <p>Kategori tidak ada </p>

                        <?php } ?>
                </div>
            </div>
        </div>

        <!-- new product -->
        <div class="section">
            <div class="container">
                <h3>Produk terbaru</h3>
                <div class="box">
                        <?php
                            $produk = mysqli_query($conn, "SELECT * FROM tb_product WHERE product_status = 1 ORDER BY product_id DESC LIMIT 9");
                            if (mysqli_num_rows($produk) >0){
                             while ($p = mysqli_fetch_array($produk) ){
                        ?>      
                                <a href="detail-produk.php?id=<?php echo $p['product_id'] ?>">
                                    <div class="col-4">
                                        <img src="produk/<?php echo $p['product_image']?>" >
                                        <p class="nama"><?php echo $p['product_name']?> </p>
                                        <p class="harga">RP.<?php echo number_format($p['product_price'])?> </p>
                                    </div>
                                </a>
                        <?php } } else { ?>

                            <p>Produk tidak ada</p>
                        <?php } ?>
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