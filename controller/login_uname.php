<?php
    // session_start();
<<<<<<< HEAD
    $id = $_SESSION['id'];
=======
    // Không được gán trị role bằng cookie của nó mà phải bằng session của phiên đăng nhập
    //$role = isset($_COOKIE['role']) ? $_COOKIE['role'] : $_SESSION['role'];
>>>>>>> 1481aca0a9981e0ce3d14ce0ca3ea27f632c6237
    $role=$_SESSION['role'];
    if($role==1) {
      header ('Location: adminhienthi.php');
    }
    elseif ($role==0) {
<<<<<<< HEAD
        header ("Location: tranghienthi.php?quanly=quanlytaikhoan&id=$id");
    }
    
=======
      // Tấn công ID 
      // header ("Location: tranghienthi.php?quanly=quanlytaikhoan&id=$id");
      header ('Location: tranghienthi.php?quanly=trangchu');
    }
>>>>>>> 1481aca0a9981e0ce3d14ce0ca3ea27f632c6237
?>
