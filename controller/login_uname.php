<?php
    // session_start();
    // Không được gán trị role bằng cookie của nó mà phải bằng session của phiên đăng nhập
    //$role = isset($_COOKIE['role']) ? $_COOKIE['role'] : $_SESSION['role'];
    $role=$_SESSION['role'];
    if($role==1) {
      header ('Location: adminhienthi.php');
    }
    elseif ($role==0) {
      // Tấn công ID 
      // header ("Location: tranghienthi.php?quanly=quanlytaikhoan&id=$id");
      header ('Location: tranghienthi.php?quanly=trangchu');
    }
?>
