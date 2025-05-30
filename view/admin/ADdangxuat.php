<?php
// ob_start();
// session_start(); // Ensure session is started

if (isset($_SESSION['role'])) {
    // Unset all session variables
    unset($_SESSION['user']);
    unset($_SESSION['role']);
    unset($_SESSION['id']);
    if (isset($_SESSION['text_error']) && !empty($_SESSION['text_error'])) {
        unset($_SESSION['text_error']);
    }

    // Redirect to another page
    // Xóa cookie 'role' để đảm bảo hệ thống không còn coi người dùng là admin
    //setcookie('role', '', time() - 3600, "/"); // Đặt thời gian hết hạn trong quá khứ để xóa cookie     
    header('Location: ../../controller/tranghienthi.php?quanly=dangnhap');
    exit(); // Ensure no further code is executed after redirection
}

ob_end_flush();
?>
