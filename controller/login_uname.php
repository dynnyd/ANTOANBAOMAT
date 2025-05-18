<?php
    // session_start();
    $id = $_SESSION['id'];
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
<!-- // session_start();
$role = $_SESSION['role'];

if ($role == 1) {
  header('Location: adminhienthi.php');
  exit();
} elseif ($role == 0) {
  header('Location: tranghienthi.php?quanly=trangchu');
  exit();
} else {
  // Trường hợp role không xác định
  header('Location: ../view/cus/dangnhap/login.php');
  exit();
}
?> -->
