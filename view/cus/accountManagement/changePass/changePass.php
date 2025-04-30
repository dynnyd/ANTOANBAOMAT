<?php

$host = "localhost";
$username = "root";
$password = "";
$database = "database";
$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die('Kết nối không thành công: ' . $conn->connect_error);
} 

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!isset($_GET['id'])) {
        echo "<script>
                Swal.fire({
                    icon: 'error',
                    title: 'Người dùng không tồn tại.',
                    showConfirmButton: true,
                });
                </script>";
        exit();
    }

    $id = $_GET['id'];
    $new_password = $_POST['new_password'];
    $confirm_password = $_POST['confirm_password'];

    date_default_timezone_set('Asia/Ho_Chi_Minh'); 
    $now = date('Y-m-d H:i:s');
    if(strlen($new_password)<6){
        $error="Mật khẩu tối thiểu 6 ký tự.";
    } 
    elseif ($new_password !== $confirm_password) {
        $error = "Mật khẩu nhập lại không đúng.";
    } else {
        // Hash the new password and update it in the database
        $new_password_hashed = password_hash($new_password, PASSWORD_DEFAULT);
        $stmt = $conn->prepare("UPDATE user SET password = ?, last_updated = ? WHERE user_id = ?");
        $stmt->bind_param("ssi", $new_password_hashed, $now, $id);
        
        if ($stmt->execute()) {
            echo "<script>
            Swal.fire({
                icon: 'success',
                title: 'Cập nhật thành công.',
                showConfirmButton: true,
            }).then(() => {
                window.location.href = 'tranghienthi.php?quanly=quanlytaikhoan';
            });
            </script>";
            // header("Location: tranghienthi.php?quanly=quanlytaikhoan");
            exit();
        } else {
            $error = "Thất bại. Vui lòng thử lại.";
        }

        $stmt->close();
    }

    if (isset($error)) {
        echo "<script>
            Swal.fire({
                icon: 'error',
                title: '{$error}',
                showConfirmButton: true,
            });
            </script>";
    }
}
?>

<link rel="stylesheet" href="../view/cus/accountManagement/changePass/changePass.css">
<script src="../view/cus/dangnhap/hienthi_mk.js"></script>
<div class="box-content">
    <h2>ĐỔI MẬT KHẨU</h2>
    <div class="form">
        <form method="POST">
            <div>
                <label for="password">Mật khẩu mới:</label>
                <div class="input-icon">
                    <input type="password" id="password" name="new_password" >
                    <span id="nosee" style="cursor: pointer;" onclick="showpass()"><i class="fas fa-eye-slash icon"></i></span>
                </div>
            </div>
            <div>
                <label for="re_enter_password">Nhập lại mật khẩu mới:</label>
                <div class="input-icon">
                    <input type="password" id="re_enter_password" name="confirm_password" >
                    <span id="noseeRe" style="cursor: pointer;" onclick="showRepass()"><i class="fas fa-eye-slash icon"></i></span>
                </div>
            </div>

                <button class="bt-cn" type="submit">Cập nhật</button>
            
            
        </form>

    </div>
</div>
