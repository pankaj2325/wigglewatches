
<%@page import="impl.CategoryDAOImpl"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="impl.ProductDAOImpl"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.8.5, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.5, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/images-122x122.png" type="image/x-icon">
  <meta name="description" content="">
  <title>Home</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css"
  
  
   type="text/css">
  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
</head>
<body>
  <section class="menu cid-r7eYlAk2PH" once="menu" id="menu1-0">

    

    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="https://mobirise.co">
                         <img src="assets/images/images-122x122.png" alt="Mobirise" title="" style="height: 3.8rem;">
                    </a>
                </span>
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4" href="index.jsp">
                        WiggleWatches.com</a></span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item">
                    <a class="nav-link link text-white display-4" href="index.jsp">
                        <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>Home</a>
                </li><li class="nav-item"><a class="nav-link link text-white display-4" href="ViewCategories.jsp"><span class="mbri-shopping-bag mbr-iconfont mbr-iconfont-btn"></span>
                        Category</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="ViewProducts.jsp"><span class="mbri-shopping-basket mbr-iconfont mbr-iconfont-btn"></span>
                        Products</a></li>
                <li class="nav-item">
                 <c:if test="${sessionScope.role == 'ROLE_USER'}">
                    <a class="nav-link link text-white display-4" href="ViewCart.jsp"><span class="mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                        Cart &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
                        </c:if>
                </li></ul>
            <div class="navbar-buttons mbr-section-btn">
             <c:if test="${sessionScope.role != 'ROLE_USER'}">
            <a class="btn btn-sm btn-primary display-4" href="reg.jsp"><span class="mbri-users mbr-iconfont mbr-iconfont-btn"></span>
                    Sign Up</a> 
                      </c:if>
                    
                    <a class="btn btn-sm btn-primary display-4" href="logmein.jsp"><span class="mbri-login mbr-iconfont mbr-iconfont-btn"></span>
                    Log In</a>
                    <c:if test="${sessionScope.role == 'ROLE_USER'}">
                     <a class="btn btn-sm btn-primary display-4" href="Logout"><span class="mbri-logout mbr-iconfont mbr-iconfont-btn"></span>
                    Logout</a>
                    </c:if>
                    
                    
                    <c:if test="${sessionScope.role == 'ROLE_USER'}">
                        <li class="nav-item"><a class="nav-link link text-white display-4" ><h4>Hi ${sessionScope.name}</h4>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="https://mobirise.co">
                     </a></li></ul> 
                        </c:if>
                    
                    </div>
        </div>
    </nav>
</section>

<section class="engine"><a href="https://mobirise.info/s">bootstrap theme</a></section><section class="carousel slide cid-r7eZRPqxrm" data-interval="false" id="slider1-2">

    

    <div class="full-screen"><div class="mbr-slider slide carousel" data-pause="true" data-keyboard="false" data-ride="false" data-interval="false"><ol class="carousel-indicators"><li data-app-prevent-settings="" data-target="#slider1-2" data-slide-to="0"></li><li data-app-prevent-settings="" data-target="#slider1-2" class=" active" data-slide-to="1"></li><li data-app-prevent-settings="" data-target="#slider1-2" data-slide-to="2"></li></ol><div class="carousel-inner" role="listbox"><div class="carousel-item slider-fullscreen-image" data-bg-video-slide="false" style="background-image: url(assets/images/mbr-1920x1280.jpg);"><div class="container container-slide"><div class="image_wrapper"><div class="mbr-overlay"></div><img src="assets/images/mbr-1920x1280.jpg"><div class="carousel-caption justify-content-center"><div class="col-10 align-center"><h2 class="mbr-fonts-style display-1">Rolex</h2><p class="lead mbr-text mbr-fonts-style display-5">Rolex uses Oystersteel for its steel watch cases. Specially developed by the brand, Oystersteel belongs to the 904L steel family, superalloys most commonly used in high-technology and in the aerospace and chemical industries, where maximum resistance to corrosion is essential. Oystersteel is extremely resistant, offers an exceptional finish once polished and maintains its beauty even in the harshest environments.</p></div></div></div></div></div><div class="carousel-item slider-fullscreen-image active" data-bg-video-slide="false" style="background-image: url(assets/images/analogue-antique-business-691640-2000x1333.jpg);"><div class="container container-slide"><div class="image_wrapper"><div class="mbr-overlay"></div><img src="assets/images/analogue-antique-business-691640-2000x1333.jpg"><div class="carousel-caption justify-content-center"><div class="col-10 align-left"><h2 class="mbr-fonts-style display-1">Daniel Wellington</h2><p class="lead mbr-text mbr-fonts-style display-5">A True Style Statement This Classic Petite Melrose Features A Black Dial That Accentuates Classic Elegance While Adding A Splash Of Refreshing Attitude. This Watch Has You Ready To Go From Office To Rooftop Party In The Blink Of An Eye.
<br>
<br></p></div></div></div></div></div><div class="carousel-item slider-fullscreen-image" data-bg-video-slide="false" style="background-image: url(assets/images/classic-design-elegant-371095-2000x1275.jpg);"><div class="container container-slide"><div class="image_wrapper"><div class="mbr-overlay"></div><img src="assets/images/classic-design-elegant-371095-2000x1275.jpg"><div class="carousel-caption justify-content-center"><div class="col-10 align-left"><h2 class="mbr-fonts-style display-1">Maurice lacroix&nbsp;</h2><p class="lead mbr-text mbr-fonts-style display-5">This classic yet refreshingly crisp design can mix and match seamlessly with our colourful NATO strap, the smart leather strap and the beautifully crafted mesh strap. The Daniel Wellington style will appeal to almost everyone with a taste for classic and timeless design.</p></div></div></div></div></div></div><a data-app-prevent-settings="" class="carousel-control carousel-control-prev" role="button" data-slide="prev" href="#slider1-2"><span aria-hidden="true" class="mbri-left mbr-iconfont"></span><span class="sr-only">Previous</span></a><a data-app-prevent-settings="" class="carousel-control carousel-control-next" role="button" data-slide="next" href="#slider1-2"><span aria-hidden="true" class="mbri-right mbr-iconfont"></span><span class="sr-only">Next</span></a></div></div>

</section>

<section class="features17 cid-r7f2OBsq2o" id="features17-9">
    
    

    
    <div class="container-fluid">
        <div class="media-container-row">
            <div class="card p-3 col-12 col-md-6 col-lg-2">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/mbr-376x240.jpg" alt="Mobirise" title="">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">Rolex</h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            Mobirise is an easy website builder - just drop site elements to your page, add content and style it to look the way you like.
                        </p>
                    </div>
                </div>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-2">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/mbr-376x249.jpg" alt="Mobirise" title="">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">Daniel Wellington</h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            All sites you make with Mobirise are mobile-friendly. You don't have to create a special mobile version of your site.
                        </p>
                    </div>
                </div>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-2">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/mbr-376x251.jpg" alt="Mobirise" title="">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">Apple</h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            Mobirise offers many site blocks in several themes, and though these blocks are pre-made, they are flexible.
                        </p>
                    </div>
                </div>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-2">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/mbr-376x250.jpg" alt="Mobirise" title="">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">Maurice lacro</h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                           Mobirise gives you the freedom to develop as many websites as you like given the fact that it is a desktop app.
                        </p>
                    </div>
                </div>
            </div>
            <div class="card p-3 col-12 col-md-6 col-lg-2">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/mbr-1-376x251.jpg" alt="Mobirise" title="">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">Radoo</h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            Mobirise is an easy website builder - just drop site elements to your page, add content and style it to look the way you like.
                        </p>
                    </div>
                </div>
            </div>
            <div class="card p-3 col-12 col-md-6 col-lg-2">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/mbr-2-376x251.jpg" alt="Mobirise" title="">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">Reebok</h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            All sites you make with Mobirise are mobile-friendly. You don't have to create a special mobile version of your site.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="features13 cid-r7f2AR1opk mbr-parallax-background" id="features13-8">

    

    
    <div class="container">
        <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2"></h2>

        <div class="media-container-row container">
            <div class="card col-12 col-md-6 p-5 m-3 align-center">
                <div class="card-img">
                    <img src="assets/images/mbr-1200x675.jpg" alt="Mobirise" title="">
                </div>
                <h4 class="card-title py-2 mbr-fonts-style display-5">Time to be Different</h4>
                <p class="mbr-text mbr-fonts-style display-7">
                    Our carefully curated collections offer endless opportunities to spark up a conversation about what's on your wrist. Find a watch as unique as you are!
                </p>
            </div>
            <div class="card col-12 col-md-6 p-5 m-3 align-center">
                <div class="card-img">
                    <img src="assets/images/mbr-1200x848.jpg" alt="Mobirise" title="">
                </div>
                <h4 class="card-title py-2 mbr-fonts-style display-5">Free shipping &amp; easy returns</h4>
                <p class="mbr-text mbr-fonts-style display-7">
                    Free shipping on orders over $99 and free worldwide shipping on orders over $199*. Simple 30 day return policy. It doesn't get better than that.
                </p>
            </div>
                
        </div>
</div></section>

<section class="cid-r7f3izIg4j" id="footer2-a">

    

    

    <div class="container">
        <div class="media-container-row content mbr-white">
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <p class="mbr-text">
                    <strong>Address</strong>
                    <br>
                    <br>878/6 Mehrauli<br>New Delhi, India&nbsp;<br>
                    <br>
                    <br><strong>Contacts</strong>
                    <br>
                    <br>Email: support@wigglewatches.com<br>Phone: +91 9999457818&nbsp;<br>Fax: +91 02586</p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <p class="mbr-text">
                    <strong>Links</strong>
                    <br>
                    <br><a class="text-primary" href="https://mobirise.co/">Website builder</a>
                    <br><a class="text-primary" href="https://mobirise.co/">Download for Windows</a>
                    <br><a class="text-primary" href="https://mobirise.co/">Download for Mac</a>
                    <br>
                    <br><strong>Feedback</strong>
                    <br>
                    <br>Please send us your ideas, bug reports, suggestions! Any feedback would be appreciated.
                </p>
            </div>
            <div class="col-12 col-md-6">
                <div class="google-map"><iframe frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0Dx_boXQiwvdz8sJHoYeZNVTdoWONYkU&amp;q=place_id:ChIJn6wOs6lZwokRLKy1iqRcoKw" allowfullscreen=""></iframe></div>
            </div>
        </div>
        <div class="footer-lower">
            <div class="media-container-row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="media-container-row mbr-white">
                <div class="col-sm-6 copyright">
                    <p class="mbr-text mbr-fonts-style display-7">
                        © Copyright 2017 Wiggle Group - All Rights Reserved
                    </p>
                </div>
                <div class="col-md-6">
                    <div class="social-list align-right">
                        <div class="soc-item">
                            <a href="https://twitter.com/mobirise" target="_blank">
                                <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.facebook.com/pages/Mobirise/1616226671953247" target="_blank">
                                <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.youtube.com/c/mobirise" target="_blank">
                                <span class="socicon-youtube socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://instagram.com/mobirise" target="_blank">
                                <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://plus.google.com/u/0/+Mobirise" target="_blank">
                                <span class="socicon-googleplus socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.behance.net/Mobirise" target="_blank">
                                <span class="socicon-behance socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/ytplayer/jquery.mb.ytplayer.min.js"></script>
  <script src="assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>
  <script src="assets/parallax/jarallax.min.js"></script>
  <script src="assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="assets/slidervideo/script.js"></script>
  
  
</body>
</html>