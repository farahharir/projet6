<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Les amis de l'escalade</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/grayscale.min.css" rel="stylesheet">

</head>
<body style="background-image: url('img/acceuil.jpg');">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">

  <a class="navbar-brand js-scroll-trigger" href="/index">BIENVENUE</a>
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
    Menu
    <i class="fas fa-bars"></i>
  </button>

  <div class="btn-group" >
    <button type="button"  class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <c:choose>
        <c:when test="${pageContext.request.userPrincipal.name == null}">
         Se connecter
        </c:when>
        <c:otherwise>
          ${pageContext.request.userPrincipal.name}
        </c:otherwise>
      </c:choose>
    </button>
    <div class="dropdown-menu">
      <c:choose>
        <c:when test="${pageContext.request.userPrincipal.name == null}">
          <li>
            <a class="dropdown-item" href="/inscription">S'inscrire</a>
          </li>
          <li>
            <a class="dropdown-item" href="/login">Se connecter</a>
          </li>
        </c:when>
        <c:otherwise>
          <li>
            <a class="dropdown-item" href="/Dashboard">Tableau de bord</a>
          </li>
          <li>
            <a class="dropdown-item" href="/logout">Logout</a>
          </li>
        </c:otherwise>
      </c:choose>
    </div>
  </div>


  <div class="collapse navbar-collapse" id="navbarResponsive">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link js-scroll-trigger" href="/acceuil">Acceuil</a>
      </li>
      <li class="nav-item">
        <a class="nav-link js-scroll-trigger"  href="/spots">Spot</a>
      </li>
      <li class="nav-item">
        <a class="nav-link js-scroll-trigger" onclick="alert('Accès réservé aux membres')" href="/topos">Topo</a>
      </li>
      <li class="nav-item">
        <a class="nav-link js-scroll-trigger" href="/contact">Contact</a>
      </li>
    </ul>
  </div>

</nav>

<div id="about" class="about-section text-center">


  <div class="row">
    <div class="container">

      <h2 class="text-white mb-4">Qui sommes-nous?</h2>
      <p class="text-black-50">Nous réunissons les passionnés d'escalade de la France entière dans le partage dans cette discipline. Vous recherchez un site de grimpe ? Vous êtes au bon endroit! Vous pouvez aussi partager vos expériences concernant un site ou mettre en ligne les topos que vous possèdez! N'attendez plus! <a href="/inscription">Inscrivez-vous</a>
      </p>

      <form action="/search" method="get">
        <div class="form-row text-center">
         
            <input type="text" name="nom" class="form-control form-control-lg" placeholder="Entrer un lieux">
            <input type="text" name="type" class="form-control form-control-lg" placeholder="Entrer un type (Falaise...)">
           <hr>
            <button class="btn btn-primary container" value="Search" role="button" >Trouver un spot</button>
          </div>
      </form>

    </div>
  </div>
</div>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for this template -->
<script src="js/grayscale.min.js"></script>

</body>

</html>


  