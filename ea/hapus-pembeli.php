<?php
    include 'db.php';

    if (isset ($_GET['idb'])){
        $delete = mysqli_query($conn, "DELETE FROM tb_buyer WHERE buyer_id= '".$_GET['idb']."' ");
        echo '<script>window.location= "dt-pembeli.php"</script>';
    }

?>