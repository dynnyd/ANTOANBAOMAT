<?php
// session_start();
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
?>