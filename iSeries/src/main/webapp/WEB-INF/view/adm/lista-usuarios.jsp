<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Materialize -->
<link href="<c:url value='/css/materialize.min.css' />" rel="stylesheet"
	type="text/css" />
<!-- Icones -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- CSS -->
<link href="<c:url value='/css/estilo.css' />" rel="stylesheet"
	type="text/css" />
<title> Lista de Usuarios - ${usuario_logado.login}</title>
</head>
<body>

	<nav>
		<div class="nav-wrapper">
			<a href="#" class="brand-logo right">iSeries</a>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li><a href="#" id="ativa_side_nav" data-activates="slide-out"><i
						class="material-icons">menu</i></a></li>
			</ul>
		</div>
	</nav>

	<hr> <br>
		
	<!-- -------------------------------------------------------------------------------- -->
	<ul id="slide-out" class="side-nav">
		<li>
			<div class="userView">
				<div class="background">
					<img class="responsive-img" src="<c:url value="/img/cinema.jpg"/>" />
				</div>

				<br>
				<br>
				<br>
				<br> <a href="#!name"> <i class="material-icons">perm_identity</i>
					<span style="padding-left: 30px;"></span> ${usuario_logado.login}
				</a> <br> <a href="#!email"> <i class="material-icons">email</i>
					<span style="padding-left: 30px;"></span> ${usuario_logado.email}
				</a>
			</div>
		</li>

		<li><div class="divider"></div></li>

		<li><a href="homeAdm"><i class="material-icons"> store
			</i> Home </a></li>
			
		<li><a href="listaSeries"><i class="material-icons">movie</i>
				Lista de Series</a></li>

		<li><div class="divider"></div></li>

		<li><a href="logout" class="waves-effect"> <i
				class="material-icons"> exit_to_app </i> Sair
		</a></li>
	</ul>
	<!-- -------------------------------------------------------------------------------- -->
	<div class="container">

		<table class="striped">
			<thead>
				<tr>
					<th>login</th>
					<th>email</th>
					<th>qtdSeries</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="usuario" items="${lista_usuarios}">
					<tr>
						<td>${usuario.login}</td>
						<td>${usuario.email}</td>
						<td>${usuario.admin}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
	<!-- -------------------------------------------------------------------------------- -->
	<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/js/materialize.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/script.js"/>"></script>

</body>
</html>