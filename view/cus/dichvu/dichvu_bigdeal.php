<?php
require("../model/connect.php");
$conn = connectdb();
?>

<script>
  function navigate()
  {
    window.location = "tranghienthi.php?quanly=giohangbigdeal";
  }
</script>

<style>
    .banner_bigdeal
    {
        width: 100%;
        height: 90%;
        margin-top: 90px;
    }

  h1
  {
    display: flex;
    justify-content: center;
    text-align: center;
    font-family: 'Lalezar';
    align-items: center;
    background-color: rgba(174, 33, 8, 1);
    color: white;
    margin-top: -5px;
    margin-bottom: 0px;
  }

  .food_order {
      background-color: rgba(255, 242, 242, 1);
      padding-bottom: 50px;
      padding-top: 50px;
      display: flex;
      justify-content: center; /* Căn giữa theo chiều ngang */
      align-items: center; /* Căn giữa theo chiều dọc */
      flex-direction: column; /* Đảm bảo các phần tử xếp theo cột */
  }


  .full_menu img
  {
    width: 350px;
    height: 350px;
    margin-bottom: 10px;
    
  }

  .option
  {
      text-align: center;
  }

 #datmonbigdeal
 {
   background-color: rgba(252, 47, 19, 1);
    border-radius: 10px;
    border: none; 
    color: white;
    font-family: 'Lalezar';
    font-size: 20px;
    width: fit-content;
    padding: 5px;
    margin-bottom: 50px;

 }
   
  .button
  {
    display: flex;
    padding: 20px 0 20px 100px;
  }

.giohangDV-container {
    display: flex;
    justify-content: flex-end; /* Đẩy nút sang rìa phải */
    width: 100%; /* Đảm bảo chiếm toàn bộ chiều rộng của `full_menu` */
    margin-bottom: 20px; /* Khoảng cách dưới nút */
}

.giohangDV {
    background-color: rgba(252, 47, 19, 1);
    width: fit-content;
    border-radius: 60px;
    border: none;
    padding: 18px;
    font-size: 24px;
    color: white;
    cursor: pointer;
}
.full_menu {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); /* Tự động điều chỉnh số cột */
    gap: 20px; /* Khoảng cách giữa các mục */
    justify-content: center; /* Căn giữa nội dung trong grid */
    align-items: start; /* Căn các mục theo chiều dọc */
    margin: 50px auto; /* Khoảng cách trên/dưới và căn giữa theo chiều ngang */
    max-width: 1200px; /* Giới hạn chiều rộng tối đa */
    padding: 20px; /* Thêm khoảng cách bên trong */
}

.option {
    background-color: #fff; /* Màu nền trắng */
    border: 1px solid #ddd; /* Viền nhẹ */
    border-radius: 10px; /* Bo góc */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Đổ bóng */
    padding: 20px; /* Khoảng cách bên trong */
    text-align: center; /* Căn giữa nội dung */
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* Hiệu ứng hover */
}

.option:hover {
    transform: translateY(-5px); /* Hiệu ứng nổi lên khi hover */
    box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15); /* Tăng đổ bóng khi hover */
}

.option img {
    width: 100%; /* Chiếm toàn bộ chiều rộng container */
    height: auto; /* Tự động điều chỉnh chiều cao */
    border-radius: 10px; /* Bo góc cho ảnh */
    margin-bottom: 15px; /* Khoảng cách dưới ảnh */
}

.text_info {
    text-align: left; /* Căn trái nội dung văn bản */
    margin-top: 10px;
    font-size: 16px;
    color: #333; /* Màu chữ */
}

.text_info p {
    margin: 5px 0; /* Khoảng cách giữa các đoạn văn */
}

.text_info .price {
    color: rgba(253, 166, 93, 1); /* Màu chữ giá */
    font-weight: bold;
}

#datmonbigdeal {
    display: block; /* Đưa nút xuống dòng */
    margin: 15px auto; /* Căn giữa nút theo chiều ngang và thêm khoảng cách trên/dưới */
    background-color: rgba(252, 47, 19, 1); /* Màu nền nút */
    color: white; /* Màu chữ */
    border: none; /* Bỏ viền */
    border-radius: 5px; /* Bo góc */
    padding: 10px 20px; /* Khoảng cách bên trong nút */
    font-size: 16px; /* Kích thước chữ */
    cursor: pointer; /* Con trỏ chuột */
    transition: background-color 0.3s ease; /* Hiệu ứng hover */
}

#datmonbigdeal:hover {
    background-color: rgba(200, 40, 15, 1); /* Màu nền khi hover */
}
</style>
        <!-- Thanh đặt món -->
        

           <?php
           $query = "SELECT banner FROM service WHERE id_service = '2'";
           $result = mysqli_query($conn, $query);
           
           if (!$result) {
               die('Invalid query: ' . mysqli_error($conn));
           }
           
           $img = mysqli_fetch_assoc($result);
           
           if ($img && isset($img['banner'])) {
               $bannerUrl = $img['banner'];
           } else {
               $bannerUrl = false;
           }
           ?>

           <img src="<?php echo htmlspecialchars('../view/admin/ql_dichvu/uploads/' . $bannerUrl); ?>" class="banner_bigdeal">

            <h1>ĐẶT MÓN ĂN</h1>
            <div class="food_order" style = "font-family: 'Lalezar'">
              
                <button class = "giohangDV" onclick="navigate()"><i class="fas fa-shopping-basket fa-lg" style="color: #ffffff;"></i></button>
              
            
                
                <div class="full_menu">
                  <?php
                    $sql = "SELECT food_combo, price, image FROM food_for_service WHERE ID_service = '2'";
                    $result = mysqli_query($conn, $sql);

                    if (!$result) {
                        die("Lỗi" . mysqli_error($conn));
                    }

                    if (mysqli_num_rows($result) > 0) {
                        while ($row = mysqli_fetch_assoc($result)) {
                          echo '<div class="option">';
                          echo '<img name="image" src="../view/admin/ql_dichvu/uploads/' . $row['image'] . '">';
                          echo '<div class="text_info">';
                          echo '<p style="margin-bottom: 0px">' . $row['food_combo'] . '</p>';
                          echo '<p style="color:rgba(253, 166, 93, 1); display: inline;" id="' . $row['price'] . '">' . number_format($row['price'], 0, ',', '.') . 'đ</p><br>';
                          echo '<form action="tranghienthi.php?quanly=giohangbigdeal" method="post">';
                          echo 'Số lượng: <input type="number" name="soluong" id="quantity" placeholder="1" min="1" step="1" max="50" title="Vui lòng nhập số lượng" style="width: 60px; height: 30px; font-size:18px; margin-bottom:20px" required><br>';
                          echo '<input type="hidden" name="tenmon" value="' . $row['food_combo'] . '">';
                          echo '<input type="hidden" name="giamon" value="' . $row['price'] . '">';
                          echo '<input type="hidden" name="hinhanh" value="' . $row['image'] . '">';
                          echo '<input type="submit" id="datmonbigdeal" name="datmonbigdeal" value="Đặt món">';
                          echo '</form>';
                          echo '</div>';
                          echo '</div>';
                        }
                    }
                  ?>
                </div>
      
            

        </div>
                