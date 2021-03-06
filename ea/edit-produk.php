<?php

    session_start();
    include 'db.php';
    if($_SESSION['status_login'] != true){
        echo '<script>window.location="login.php"</script>';
    }

    $produk= mysqli_query($conn, "SELECT * FROM tb_product WHERE product_id= '".$_GET['id']."' ");
    if (mysqli_num_rows($produk) == 0 ){
        echo '<script>window.location="dt-produk.php"</script>';
    }
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
    <script src="https://cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
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
            <h3>Edit Data Produk</h3>
            <div class="box">
                <form action="" method="post" enctype="multipart/form-data">
                    <select class="input-control" name="kategori" required>
                            <option value="">-- Pilih --</option>
                             <?php
                                $kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC");
                                while ($r = mysqli_fetch_array ($kategori)){
                             
                             ?>
                                <option value="<?php echo $r['category_id'] ?>" <?php echo ($r['category_id'] == $p->category_id)? 'selected':''; ?> >
                                                <?php echo $r['category_name'] ?></option>
                             <?php } ?>
                    </select>

                    <input type="text" name="nama" class="input-control" placeholder="Nama Produk" value="<?php echo $p->product_name?>" required>
                    <input type="text" name="harga" class="input-control" placeholder="Harga " value="<?php echo $p->product_price?>" required>

                    <img src="produk/<?php echo $p->product_image?>" width="120px">
                    <input type="hidden" name="foto" value="<?php echo $p->product_image ?>">
                    <input type="file" name="gambar" class="input-control" >
                    <textarea class="input-control" name="deskripsi" cols="30" rows="10" placeholder="Deskripsi" ><?php echo $p->product_description?></textarea><br>
                    <select name="status" class="input-control">
                                    <option value="">--Pilih--</option>
                                    <option value="1" <?php echo ($p-> product_status ==1 )?'selected':'' ;?>>Aktif</option>
                                    <option value="0" <?php echo ($p-> product_status ==0 )?'selected':'' ;?>>Tidak Aktif</option>
                    </select>
                    <input type="submit" name="submit" value="submit" class="btn">
                </form>
                    <?php
                        if(isset($_POST['submit'])){  
                            
                            //data inputan dari form
                            $kategori    =    $_POST ['kategori'];
                            $nama        =    $_POST ['nama'];
                            $harga       =    $_POST ['harga'];
                            $deskripsi   =    $_POST ['deskripsi'];
                            $foto        =    $_POST ['foto'];
                            $status      =    $_POST ['status'];

                            //data gambar yang baru
                            $filename = $_FILES ['gambar']['name'];
                            $tmp_name = $_FILES ['gambar']['tmp_name'];

                            //menampung data format file yang diizinkan
                            $tipe_diizinkan = array('jpg', 'jpeg', 'png', 'gif');

                            //jika admin mengganti gambar
                            if($filename !=''){

                                $type1 = explode ('.', $filename);
                                $type2 = $type1 [1];

                                $newname = 'produk'.time().'.'.$type2;

                                //menampung data format file yang diizinkan
                                $tipe_diizinkan = array('jpg', 'jpeg', 'png', 'gif');

                                //validasi format file
                                if(!in_array($type2, $tipe_diizinkan)){
                                //jika format file tidak ada di dalam tipe diizinkan
                                echo '<script>alert("format file tidak diizinkan") </script>';

                                }else {
                                    unlink('./produk/' .$foto);
                                    move_uploaded_file($tmp_name, './produk/' .$newname);
                                    $namagambar = $newname;
                                }

                            }else{
                                //jika admin tidak mengganti gambar
                                $namagambar = $foto;

                            }

                            //query update data produk
                            $update = mysqli_query($conn, "UPDATE tb_product SET
                                                category_id ='".$kategori."',
                                                product_name ='".$nama."',
                                                product_price ='".$harga."',
                                                product_description ='".$deskripsi."',
                                                product_image ='".$namagambar."',
                                                product_status ='".$status."'
                                                WHERE product_id ='".$p-> product_id."' ");

                            if($update){
                                echo '<script> alert("Edit data berhasil") </script>';
                                echo '<script> window.location="dt-produk.php" </script>';
                            }else{
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
        <script>
            CKEDITOR.replace( 'deskripsi' );
        </script>
</body>
</html>