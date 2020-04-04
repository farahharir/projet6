<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Spots</title>

    <!-- Bootstrap core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/grayscale.min.css" rel="stylesheet">

</head>

<body class="inscription-section bg-dark-3-light">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="/index">BIENVENUE</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>

        <div class="button-signup">
            <a class="btn btn-primary" href="/inscription" role="button">S'inscrire</a>
        </div>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="/acceuil">Acceuil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="/spots">Spot</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" onclick="alert('Accès réservé aux membres')" href="/topos">Topo</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="/contact">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="button-signup">
    <a class="btn btn-primary" href="/spots" role="button">Retour aux spots</a>
</div>


<div class="row">
    <div class ="container">
        <h2 class="text-black mb-4 text-center">SPOT ${spot.nom}</h2>

        <table
                class="table table-striped table-hover table-condensed table-bordered">


            <tr>
                <th>Nom</th>
                <th>Secteur</th>
                <th>Type</th>
                <th>Hauteur</th>
                <th>Orientation</th>
                <th>Nombre de voies</th>
                <th>Coordonnées geographique</th>
                <th>Cotation</th>
            </tr>


            <tr>
                <td>${spot.nom}</td>
                <td>${spot.secteur}</td>
                <td>${spot.type}</td>
                <td>${spot.hauteur}</td>
                <td>${spot.orientation}</td>
                <td>${spot.nombreDeVoies}</td>
                <td>${spot.coordoneeGeo}</td>
                <td>${spot.cotation}</td>
            </tr>




        </table>



        <div class="row">
            <div class ="container">
                <h2 class="text-black mb-4 text-center">COMMENTAIRES</h2>

                <table
                        class="table table-striped table-hover table-condensed table-bordered">
                    <tr>
                        <th>Auteur</th>
                        <th>Commentaire</th>
                        <th>Date</th>
                        <th>Modifier</th>
                        <th>Supprimer</th>
                        <th>O.A.E</th>
                    </tr>


                    <c:forEach var="com" items="${comments}">

                    <tr>

                        <td>${com.auteur}</td>
                        <td>${com.commentaire}</td>
                        <td>${com.dateParution}</td>
                        <td><a href="${pageContext.request.contextPath }/updateComment/${com.id}">Modifier</a></td>
                        <td>
                            <a href="${pageContext.request.contextPath }/delete/${com.id}" onclick="return confirm('Êtes vous sur de vouloir supprimer ce commentaire?')">Delete</a>
                        </td>


                        </tr>

                    </c:forEach>





                </table>
            </div>
        </div>


    </div>
</div>


<div class="container">
<div class="row">
    <div class="col-lg-10 col-xl-9 mx-auto">
        <div class="card card-signin flex-row my-5">

            <div class="card-body">
                <h5 class="card-title text-center">Ajouter un commentaire</h5>


                <th:form modelAttribute="comment" action="/afficheSpot" class="form-signin"  method="post">


                    <div class="form-label-group">
                        <label>Auteur</label>
                        <th:input path="auteur" type="text" class="form-control"/>
                    </div>

                    <div class="form-label-group">
                        <label>Commentaire</label>
                        <th:input path="commentaire" type="text" class="form-control"/>
                    </div>

                    <th:input path="spot" type="hidden" value="${spot.id}"/>


                    <hr>

                    <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Soumettre ce commentaire</button>
                    <hr class="my-4">

                </th:form>
            </div>
        </div>
    </div>
</div>
</div>

<footer class="bg-dark small text-center text-black-50">
    <div class="container">
        Copyright &copy; Les amis de l'escalade 2019
    </div>
</footer>


<!-- Bootstrap core JavaScript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for this template -->
<script src="/js/grayscale.min.js"></script>

</body>

</html>