<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about_img.jpg" alt="">
      </div>

      <div class="content">
         <h3>Welcome to Khadimart,</h3>
         <p>where tradition meets contemporary style, aligning with our college, Banasthali's aim to promote Khadi.</p> 
         <p>We're passionate about showcasing India's cultural heritage through exquisite Khadi clothing while supporting local artisans. We strive to preserve Khadi's timeless elegance while empowering communities.</p>
         <p>Shop with us and embrace the beauty of Khadi, woven with love and tradition.</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>

</section>

</body>
</html>