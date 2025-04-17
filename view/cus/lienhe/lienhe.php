<link rel="stylesheet" href="../view/cus/lienhe/lienhe.css">
<?php
    include "../model/connect.php";
   
    $conn = connectdb(); 

    if (isset($_POST['gui'])) {
        $tenkhachhang = $_POST['tenkhachhang'];
        $sodienthoai = $_POST['sodienthoai']; 
        $mailkhachhang = $_POST['mailkhachhang'];
        $tinnhan = $_POST['tinnhan']; 
        $hinhanh = $_FILES['hinhanh']['name']; 
        $hinhanh_tmp = $_FILES['hinhanh']['tmp_name']; 
        $hinhanh = time() . '_' . $hinhanh; 
    
        if (empty($tenkhachhang) || empty($sodienthoai) || empty($mailkhachhang) || empty($tinnhan)) {
            echo "<script>
                    Swal.fire({
                        icon: 'error',
                        title: 'Lỗi',
                        text: 'Vui lòng điền đầy đủ thông tin.',
                        confirmButtonColor: '#3085d6',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            window.location.href = 'tranghienthi.php?quanly=lienhe';
                        }
                    });
                  </script>";
            return;
        }
    
        $sql_insert = "INSERT INTO feedbacks (customer_name, phone_number, email, feedback_message, image) 
                       VALUES ('$tenkhachhang', '$sodienthoai', '$mailkhachhang', '$tinnhan', '$hinhanh')";
        
        if (mysqli_query($conn, $sql_insert)) {
            if ($_FILES['hinhanh']['name'] != '') {
                $target_dir = '../view/cus/lienhe/uploads_feedbacks/'; 
                    if (!is_dir($target_dir)) {
                        mkdir($target_dir, 0755, true);
                    }
                move_uploaded_file($hinhanh_tmp, '../view/cus/lienhe/uploads_feedbacks/' . $hinhanh);
            }
    
            echo "<script>
                    Swal.fire({
                        icon: 'success',
                        title: 'Cảm ơn bạn!',
                        text: 'Phản hồi của bạn đã được gửi thành công.',
                        confirmButtonColor: '#3085d6',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            window.location.href = 'tranghienthi.php?quanly=lienhe';
                        }
                    });
                  </script>";
        } else {
            echo "<script>
                    Swal.fire({
                        icon: 'error',
                        title: 'Lỗi',
                        text: 'Có lỗi khi gửi phản hồi. Vui lòng thử lại.',
                        showConfirmButton: true
                    });
                  </script>";
        }
    }    
?>

<div class="content_lienhe" style="padding-bottom:40px">
    <?php echo '<h1 style="font-family: Lalezar;margin-top:90px; color: #E7B037; text-align:center;">LIÊN HỆ GOURMÉZ</h1>'; ?>
    <div class="contact-info">
        <div class="contact-details">
            <?php
                $conn = connectdb();
                $sql_lietke_lienhe = "SELECT * FROM contacts";
                $query_lietke_lienhe = $conn->query($sql_lietke_lienhe);

                echo '<ul id="tatca_thongtin">';
                echo '<table class="tb_lienhe">';
                echo '<tr><td style="font-size: 25px; font-family: Lalezar; color: #E7B037;">Thông tin liên hệ </td></tr>';

                while ($row = $query_lietke_lienhe->fetch_assoc()) {
                    echo '<tr><td style="padding-top:10px"><i class="fas fa-user" style="border: 1px solid white; background-color: white; padding: 5px; border-radius: 50%"></i><span style="padding-left: 15px;color:#ffff">' . $row['ResName'] . '</span></td></tr>';
                    echo '<tr><td style="padding-top:10px"><i class="fas fa-phone-alt" style="border: 1px solid white; background-color: white; padding: 5px; border-radius: 50%"></i><span style="padding-left: 15px;color:#ffff">' . $row['ResPhoneNumber'] . '</span></td></tr>';
                    echo '<tr><td style="padding-top:10px"><i class="fas fa-map-marker-alt" style="border: 1px solid white; background-color: white; padding: 5px; border-radius: 50%"></i><span style="padding-left: 5px;color:#ffff"></i><span style="padding-left: 15px">' . $row['ResAddress'] . '</span></td></tr>';
                    echo '<tr><td style="padding-top:10px"><i class="fas fa-envelope" style="border: 1px solid white; background-color: white; padding: 5px; border-radius: 50%"></i><span style="padding-left: 0px"></i><span style="padding-left: 15px;color:#ffff">' . $row['ResEmail'] . '</span></td></tr>';
                }
                
                echo '</table>';
                echo '</ul>';
            
                echo '<div id="map-container" style="margin-top:30px; margin-left:40px">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3903.387049790095!2d108.4567228743034!3d11.947682136500624!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3171131d886ead69%3A0x46a4d17dbd0acfaf!2zNDcgUXVhbmcgVHJ1bmcsIFBoxrDhu51uZyA5LCBUaMOgbmggcGjhu5EgxJDDoCBM4bqhdCwgTMOibSDEkOG7k25nLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1715954425734!5m2!1svi!2s"
                        width="500" height="440" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>';

                echo '</table>';
                echo '</ul>';
                echo '</div>';

                echo '<div class="feedback-form">';
                echo '<h2>Gửi phản hồi cho chúng tôi 💬</h2>';
                echo '<p class="sub-title">Chúng tôi luôn lắng nghe ý kiến từ bạn để cải thiện dịch vụ!</p>';
                echo '<form method="POST" action="tranghienthi.php?quanly=lienhe" enctype="multipart/form-data">';
                echo '<div class="form-group">';
                echo '<input type="text" name="tenkhachhang" placeholder="Họ và tên" required>';
                echo '</div>';
                echo '<div class="form-group">';
                echo '<input type="text" name="sodienthoai" placeholder="Số điện thoại" required>';
                echo '</div>';
                echo '<div class="form-group">';
                echo '<input type="email" name="mailkhachhang" placeholder="Địa chỉ email" required>';
                echo '</div>';            
                echo '<div class="form-group">';
                echo '<textarea name="tinnhan" placeholder="Nội dung phản hồi" rows="4" required></textarea>';
                echo '</div>';
                echo '<div class="form-group">';
                echo '<input type="file" name="hinhanh">';
                echo '</div>';
                echo '<div class="form-group center">';
                echo '<button type="submit" name="gui" class="btn_gui">Gửi</button>';
                echo '</div>';
                echo '</form>';
                echo '</div>';
                
                
                $conn->close();
            ?>
        </div>
    </div>
</div>
