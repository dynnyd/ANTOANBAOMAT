<?php
session_start();
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 1) {
    http_response_code(403);
    exit('Bạn không có quyền truy cập trang này.');
}
// Nếu là admin, chuyển hướng sang trang hiển thị admin
header('Location: ../view/admin/tranghienthi.php');
exit();
?>