<?php
require("../model/connect.php");

function getImageUrl() {
    $conn = connectdb();
    $query = "SELECT banner FROM service WHERE id_service = '2'";
    $result = mysqli_query($conn,$query);
    
    if (!$result) {
        die('Invalid query: ' . mysqli_error($conn));
    }
    
    $img = mysqli_fetch_assoc($result);
    
    mysqli_close($conn); // Close the connection
    
    return $img;
}


function tongdonhang()
    {
        $tong = 0;
        if(isset($_SESSION['giohang'])&&(is_array($_SESSION['giohang'])))
        {
            if(sizeof($_SESSION['giohang'])>0)
            {
          
            for($i=0; $i < sizeof($_SESSION['giohang']); $i++)
            {
                $tt =(int) $_SESSION['giohang'][$i][2]*(int)$_SESSION['giohang'][$i][3];
                $tong+= $tt;
            
            }
        }
    }
    return $tong;
}

function taodonhang($id,$name, $phone, $email, $booking_date, $address, $total_price, $note,$order_day)
{
    $conn = connectdb();
    $sql = "INSERT INTO bigdeal_service(id_bill,name, phone, email, booking_date, address, total_price, note,order_day)
                VALUES ('$id','$name','$phone','$email','$booking_date','$address', '$total_price', '$note','$order_day')";

    if ($total_price != 0)
    {
        mysqli_query($conn,$sql);
        $last_id = $id;
        mysqli_close($conn);
        return $last_id;

    }
    else if ($total_price == 0)
    {
        echo "<script>
        Swal.fire({
            icon: 'error',
            title: 'Không thể đặt dịch vụ',
            text: 'Vui lòng đặt lại',
            confirmButtonColor: '#3085d6',
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = 'tranghienthi.php?quanly=2';
            }
        });
      </script>";
        exit();
    }
    
}

function taogiohang_bigdeal($tenmon,$dongia,$soluong,$thanhtien,$idbill)
{
    $conn = connectdb();
    $sql = "INSERT INTO service_order_item(id_bill,tenmon,soluong,dongia,thanhtien)
                VALUES ('$idbill','$tenmon','$soluong','$dongia','$thanhtien')";
    echo "<script src='https://cdn.jsdelivr.net/npm/sweetalert2@10'></script>";
    if(mysqli_query($conn,$sql))
    {
        echo "<script>
        Swal.fire({
            icon: 'success',
            title: 'Đơn hàng của bạn đã được ghi nhận. Nhân viên sẽ liên hệ lại với bạn.',
            showConfirmButton: false,
            timer: 1500
        }).then(function() {
            window.location.href = 'tranghienthi.php?quanly=2';
        });
        </script>";
    }
    else
    {
        echo "<script>
        Swal.fire({
            icon: 'error',
            title: 'Không thể đặt hàng',
            text: 'Vui lòng đặt lại',
            confirmButtonColor: '#3085d6',
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = 'tranghienthi.php?quanly=2';
            }
        });
      </script>";
    }
    mysqli_close($conn);


}
function tongdonhang_sinhnhat()
    {
        $tong = 0;
        if(isset($_SESSION['giohangsn'])&&(is_array($_SESSION['giohangsn'])))
        {
            if(sizeof($_SESSION['giohangsn'])>0)
            {
          
            for($i=0; $i < sizeof($_SESSION['giohangsn']); $i++)
            {
                $tt =(int) $_SESSION['giohangsn'][$i][2]*(int)$_SESSION['giohangsn'][$i][3];
                $tong+= $tt;
            
            }
        }
    }
    return $tong;
}
function taodonhang_sinhnhat($id,$name, $phone, $email, $order_name,$gender,$booking_date, $address, $total_price, $note,$order_day)
{
    $conn = connectdb();
    $sql = "INSERT INTO birthday_service(id_bill,name, phone, email,order_name, gender , booking_date, address, total_price, note,order_day)
                VALUES ('$id','$name','$phone','$email','$order_name','$gender','$booking_date','$address', '$total_price', '$note','$order_day')";
    if ($total_price != 0)
    {
        mysqli_query($conn,$sql);

        $last_id = $id;
        mysqli_close($conn);
        return $last_id;
    }
    else if ($total_price == 0)
    {
        echo "<script>
        Swal.fire({
            icon: 'error',
            title: 'Không thể đặt dịch vụ',
            text: 'Vui lòng đặt lại',
            confirmButtonColor: '#3085d6',
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = 'tranghienthi.php?quanly=1';
            }
        });
      </script>";
        exit();
    }
   
}

function taogiohang_sinhnhat($tenmon,$dongia,$soluong,$thanhtien,$idbill)
{
    $conn = connectdb();
    $sql = "INSERT INTO service_order_item(id_bill,tenmon,soluong,dongia,thanhtien)
                VALUES ('$idbill','$tenmon','$soluong','$dongia','$thanhtien')";
    echo "<script src='https://cdn.jsdelivr.net/npm/sweetalert2@10'></script>";
    if(mysqli_query($conn,$sql))
    {
        echo "<script>
        Swal.fire({
            icon: 'success',
            title: 'Đơn hàng của bạn đã được ghi nhận. Nhân viên sẽ liên hệ lại với bạn.',
            showConfirmButton: false,
            timer: 1500
        }).then(function() {
            window.location.href = 'tranghienthi.php?quanly=1';
        });
        </script>";
    }
    else if ($tenmon == "")
    {
        echo "<script>
        Swal.fire({
            icon: 'error',
            title: 'Không thể đặt hàng',
            text: 'Vui lòng đặt lại',
            confirmButtonColor: '#3085d6',
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = 'tranghienthi.php?quanly=1';
            }
        });
      </script>";
    }
    mysqli_close($conn);


}

?>