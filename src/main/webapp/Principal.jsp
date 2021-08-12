<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>  

    <!DOCTYPE html>
    <html lang=es>

    <head>
        <meta charset="ISO-8859-1">
        <meta charset="utf-8">
        <title>Página Principal</title>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="./vista/css/materialize.min.css" media="screen,projection" />
        <link rel="stylesheet" href="./vista/css/principal.css">
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    </head>

    <body>
        <!-- Dropdown Structure -->
        <ul id="dropdown1" class="dropdown-content logout">
            <li><img src="./vista/img/userMale.png" alt="nombreusuario"></li>
            <li><a href="#!">Usuario</a></li>
            <li><a href="#!">fulan011@gmail.com</a></li>
            <li class="divider"></li>
            <li><a href="#!">Salir</a></li>
        </ul>

        <nav class="nav">
            <div class="nav-wrapper">
                <a href="#!" class="brand-logo">Acceso a Exámenes</a>
                <a href="#" data-target="mobile-demo" class="sidenav-trigger">
                    <i class="material-icons">menu</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="#">Mantenimiento</a></li>
                    <li><a href="#">Materias</a></li>
                    <li><a href="#">Exámenes</a></li>

                    <!-- Dropdown Trigger -->
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1"> Fulano de Tal ...
                        <i class="material-icons right">arrow_drop_down</i></a></li>

                </ul>
            </div>
        </nav>

        <ul class="sidenav" id="mobile-demo">
            <li><a href="#">Mantenimiento</a></li>
            <li><a href="#">Materias</a></li>
            <li><a href="#">Exámenes</a></li>

        </ul>
        <div class="container">
            <div class="row">
            <c:forEach var="curso" items="${Cursos}">
                <div class="col s12 m6 l4 xl3 ">
                    <div class="card">
                        <div class="card-image">
                            <img class="img" src="${curso.imagen}">
                            <a class="btn-floating btn-large halfway-fab waves-effect waves-light red">
                                <i class="material-icons">add</i></a>
                        </div>
                        <div class="card-content">
                            <h3 class="card-title">${curso.materia}</h3>
                            <p> ${curso.imagen} - ${curso.seccionId} - ${curso.gradoId} </p> 
                            <p>I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>


        <footer class="page-footer navfooter">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12">
                        <h5 class="white-text">Proyecto Final</h5>
                        <p class="grey-text text-lighten-4">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Totam iure fugiat magnam tempora deserunt assumenda voluptatibus molestiae atque hic dolores!</p>
                    </div>
                    <div class="col l4 offset-l2 s12">
                        <h5 class="white-text">Enlaces</h5>
                        <ul>
                            <li><a class="grey-text text-lighten-3" href="#!">Codo a Codo</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Escuela</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Facebook</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">instagram</a></li>
                        </ul>

                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    © 2021 Leonardo Martinez
                    <a class="grey-text text-lighten-4 right" href="#!">Mas enlaces</a>
                </div>
            </div>
        </footer>


        <!-- Jquery-->
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

        <!--JavaScript at end of body for optimized loading-->
        <script type="text/javascript" src="./vista/js/materialize.min.js">
        </script>

        <!-- funciones jQuery -->
        <script src="./vista/js/principal.js"></script>
    </body>

    </html>