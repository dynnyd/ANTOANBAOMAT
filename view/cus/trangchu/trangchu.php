<link rel="stylesheet" href="../view/LIB/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../view/cus/trangchu/trangchu.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<div class="trangchumain">
<img class="postertrangchu" src="../view/cus/img/GM1.png">

        <div class="chuongtrinh">
            <a class="link" href="#" id="displayfood">Hôm nay ăn gì?      </a>
            <a class="link" href="#" id="displaynews">Khuyến mãi siêu hot</a>
        </div>
        <div class="ctcontent" id="content">
            <!-- Nơi hiển thị danh sách món ăn -->
        </div>
        <script>
          $("#displayfood").click(function(e)
        {
          e.preventDefault();
          $("#content").load("../view/cus/trangchu/getdishes.php");
        })
        $("#displaynews").click(function(e)
        {
          e.preventDefault();
          $("#content").load("../view/cus/trangchu/getdiscountnews.php");
        })
         
        </script>

<div class="container1">
        <img class="poster1" src="../view/cus/img/poster3-1.png">
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img  src="../view/cus/img/gif1.gif" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../view/cus/img/gif2.gif" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../view/cus/img/gif3.gif" class="d-block w-100" alt="...">
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
        <img class="poster" src="../view/cus/img/pic1.png">   

            </script>
           
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js"></script>
            <script src="../view/LIB/bootstrap/js/bootstrap.min.js"></script>
</div>