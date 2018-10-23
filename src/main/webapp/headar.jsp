
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4" href="https://mobirise.co">
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
</body>
</html>