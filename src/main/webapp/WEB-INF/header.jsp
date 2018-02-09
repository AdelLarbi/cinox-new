<%--
  Created by IntelliJ IDEA.
  User: evergreen
  Date: 03/11/2017
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Cinox</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="nav-item ">
                    <a class="nav-link" href="#" onclick="getFilmByType('popular')">Populaire<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="getFilmByType('upComing')">Prochainement</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">A l'affiche</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="profil">Profil</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Genres<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#" onclick="getFilmByCategory(28, 'Action')" class="action" id="action">Action</a></li>
                        <li><a href="#" onclick="getFilmByCategory(12, 'Aventure')" class="adventure" id="adventure">Aventure</a></li>
                        <li><a href="#" onclick="getFilmByCategory(16, 'Animation')" class="adventure" id="animation">Animation</a></li>
                        <li><a href="#" onclick="getFilmByCategory(35, 'Comédie')" class="comedy" id="comedy">Comédie</a></li>
                        <li><a href="#" onclick="getFilmByCategory(80, 'Crime')" class="crime" id="crime">Crime</a></li>
                        <li><a href="#" onclick="getFilmByCategory(18, 'Drame')" class="drama" id="drama">Drame</a></li>
                        <li><a href="#" onclick="getFilmByCategory(10751, 'Familial')" class="family" id="family">Familial</a></li>
                        <li><a href="#" onclick="getFilmByCategory(14, 'Fantastique')" class="fantasy" id="fantasy">Fantastique</a></li>
                        <li><a href="#" onclick="getFilmByCategory(36, 'Histoire')" class="history" id="history">Histoire</a></li>
                        <li><a href="#" onclick="getFilmByCategory(10402, 'Musique')" class="music" id="music">Musique</a></li>
                        <li><a href="#" onclick="getFilmByCategory(10749, 'Romance')" class="romance" id="romance">Romance</a></li>
                        <li><a href="#" onclick="getFilmByCategory(878, 'Science-Fiction')" class="scifi" id="scifi">Science-Fiction</a></li>
                        <li><a href="#" onclick="getFilmByCategory(53, 'Thriller')" class="thriller" id="thriller">Thriller</a></li>
                    </ul>
                </li>
                <li class="gitHubLogo">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Social<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="https://github.com/M-Brit/Cinox.git" target="_blank">GitHub</a></li>
                        <li><a href="https://www.facebook.com/" target="_blank">Facebook</a></li>
                        <li><a href="https://twitter.com/?lang=fr" target="_blank">Twitter</a></li>
                        <li><a href="https://discordapp.com/" target="_blank">Discord</a></li>
                    </ul>
                </li>
            </ul>

            <div class="form-group">
            <ul class="nav navbar-nav navbar-right">

                    <li class="nav-item">

                        <form class="navbar-form navbar-right searchForm">
                            <label for="submitsearch"><input id = "search" type="text" class="form-control" placeholder="Search movies" autofocus></label>
                            <button type="submit" id ="submitsearch" class="btn btn-success">Envoyer</button>
                        </form>

                   </li>
                    <li class="nav-item" >
                        <div>
                            <a class="btn btn-danger" type="submit" href="deconnexion" >Deconnexion</a>
                        </div>
                    </li>
            </ul>
        </div>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>


<!-- Pull and insert the advertisement here -->
<script charset='UTF-8' src='https://cinox-dar.herokuapp.com' type='text/javascript'></script>
<!--<script charset='UTF-8' src='http://localhost:3000' type='text/javascript'></script>-->


<div class="banderole">
    <span href="#" class="recommendation"> Top</span>
    <h3> Créer Evénements </h3>
    <p> Vous voulez aller au cinéma mais pas seul ? Cliquer ici</p>
</div>
