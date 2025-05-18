<style>
    footer {
        background-color: rgba(174, 33, 8, 1);;
        color: white;
        font-size: 16px;
        width: 100%;
        font-family: 'Lalezar';
    }

    .footer-container {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        gap: 10%;
        padding: 20px;
        align-items: center;
    }

    .footer-info {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        gap: 5%;
        flex: 1 1 auto;
    }

    .footer-section {
        min-width: 200px; 
    }

    .footer-logo  {
        display: flex;
        justify-content: center; /* Căn giữa theo chiều ngang */
        align-items: center; /* Căn giữa theo chiều dọc */
        height: 100%; 
    }

    .footer-logo img {
        width: 150px;
        height: auto;
    }

    .footer-section h3 {
        font-size: 16px;
        margin-bottom: 10px;
        color: white;
        text-align: left;
    }

    .footer-section a, .footer-section label {
        display: block;
        color: white;
        text-decoration: none;
        margin-bottom: 6px;
        font-size: 16px;
        transition: color 0.3s;
    }

    .footer-section a:hover {
        color: #f1c40f;
    }

    .footer-icons {
        display: flex;
        gap: 15px; /* Khoảng cách giữa các icon */
    }
    .footer-icons i {
        font-size: 18px;
        padding: auto;
        margin-right: 12px;
        color: #ccc;
        cursor: pointer;
        transition: color 0.3s;
    }

    .footer-icons i:hover {
        color: #f1c40f;
    }

    .footer-bottom {
        background-color: black;
        color: white;
        text-align: center;
        font-size: 14px;
        width: 100%;
        padding: 10px 0;
    }
</style>

<footer>
    <div class="footer-container">
        <div class="footer-section footer-logo">
            <img src="../view/cus/img/logocus.png" alt="GourMéz Logo">
        </div>

        <div class="footer-info">
            <div class="footer-section">
                <h3>GourMéz</h3>
                <a href="tranghienthi.php?quanly=trangchu">Trang chủ</a>
                <a href="tranghienthi.php?quanly=vechungtoi">About us</a>
                <a href="tranghienthi.php?quanly=thucdon">Thực đơn</a>
                <a href="tranghienthi.php?quanly=dichvu">Dịch vụ</a>
            </div>

            <div class="footer-section">
                <h3>Thông tin liên hệ</h3>
                <label><i class="fa-solid fa-location-dot"></i>&nbsp 47 Quang Trung, phường 9, TP Đà Lạt, Lâm Đồng</label>
                <label><i class="fas fa-phone-alt"></i>&nbsp (038)123456789</label>
                <label><i class="fas fa-envelope"></i>&nbsp gourmez@gmail.com</label>
            </div>

            <div class="footer-section">
                <h3>Follow us</h3>
                <div class="footer-icons">
                    <i class="fab fa-facebook"></i>
                    <i class="fab fa-instagram-square"></i>
                </div>
            </div>
        </div>
    </div>
    

    <div class="footer-bottom">
        Copyright 2024, All rights reserved
    </div>
</footer>
