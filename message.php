<?php 

    if (isset($_SESSION['message'])) {
        echo "<h5 style='color: white'>".$_SESSION['message']."</h5>";
        unset($_SESSION['message']);
    }


?>