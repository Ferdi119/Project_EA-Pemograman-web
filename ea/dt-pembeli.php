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
            <h3>Data Pembeli</h3>
            <div class="box">
                <p><a href="tambah-pembeli.php">Tambah Pembeli </a></p>
               <table border="1" cellspacing="0" class="table">
                    <thread>
                        <tr>
                            <th width="60px">No</th>
                            <th>Produk</th>
                            <th>Pembeli</th>
                            <th>Status</th>
                            <th width="150px">Aksi</th>
                        </tr>
                    </thread>
                    <tbody>
                        <?php
                            $no = 1;
                            $pembeli = mysqli_query($conn, "SELECT * FROM tb_buyer LEFT JOIN tb_product USING (product_id) ORDER BY buyer_id DESC");
                            if (mysqli_num_rows($pembeli) > 0){
                            while ($row = mysqli_fetch_array($pembeli)){

                        ?>
                        <tr>
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $row['product_name'] ?></td>
                            <td><?php echo $row['buyer_name'] ?></td>
                            <td><?php echo ($row['buyer_status'] ==0 )? 'Tidak Terjual ':'Terjual' ?></td>
                            <td>
                                <a href="edit-pembeli.php?id= <?php echo $row ['buyer_id']?>">Edit </a> 
                                                                || <a href="hapus-pembeli.php?idb= <?php echo $row ['buyer_id']?>" 
                                                                onclick="return confirm('Mau Dihapus atau Tidak?')">Hapus </a>
                            </td>
                        </tr>
                        <?php   } } else {  ?>
                            <tr>
                                <td colspan="5"> Tidak Ada Data</td>
                            </tr>
                        <?php }  ?>
                    </tbody>
               </table>
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