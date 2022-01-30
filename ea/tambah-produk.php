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
            <h3>Tambah Data Produk</h3>
            <div class="box">
                <form action="" method="post" enctype="multipart/form-data">
                    <select class="input-control" name="kategori" required>
                            <option value="">-- Pilih --</option>
                             <?php
                                $kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC");
                                while ($r = mysqli_fetch_array ($kategori)){
                             
                             ?>
                                <option value="<?php echo $r['category_id'] ?>"><?php echo $r['category_name'] ?></option>
                             <?php } ?>
                    </select>

                    <input type="text" name="nama" class="input-control" placeholder="Nama Produk" required>
                    <input type="text" name="harga" class="input-control" placeholder="Harga " required>
                    <input type="file" name="gambar" class="input-control"  required>
                    <textarea class="input-control" name="deskripsi" cols="30" rows="10" placeholder="Deskripsi" ></textarea><br>
                    <select name="status" class="input-control">
                                    <option value="">--Pilih--</option>
                                    <option value="1">Aktif</option>
                                    <option value="0">Tidak Aktif</option>
                    </select>
                    <input type="submit" name="submit" value="submit" class="btn">
                </form>
                    <?php
                        if(isset($_POST['submit'])){

                            //print_r($_FILES =['gambar']);
                            //menampung inputan file dari form
                            $kategori  =    $_POST ['kategori'];
                            $nama      =    $_POST ['nama'];
                            $harga     =    $_POST ['harga'];
                            $deskripsi =    $_POST ['deskripsi'];
                            $status    =    $_POST ['status'];

                            //menampung data yang diupload
                            $filename = $_FILES ['gambar']['name'];
                            $tmp_name = $_FILES ['gambar']['tmp_name'];

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
                                //proses upload file sekaligus insert ke database
                                //jika format file sesuai dengan yang ada di dalam array tipe diizinkan
                                move_uploaded_file ($tmp_name, './produk/' .$newname);

                                $insert = mysqli_query($conn, "INSERT INTO tb_product VALUES (
                                            null,
                                            '".$kategori."',
                                            '".$nama."',
                                            '".$harga."',
                                            '".$deskripsi."',
                                            '".$newname."',
                                            '".$status."',
                                            null
                                                 ) ");

                                if($insert){
                                    echo '<script> alert("Tambah data berhasil") </script>';
                                    echo '<script> window.location="dt-produk.php" </script>';
                                }else{
                                    echo 'gagal' .mysqli_error($conn);
                                }
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