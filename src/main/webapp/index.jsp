<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>AGS Nasoft</title>
		<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
		<script type="text/javascript" src="<c:url value="/resources/js/validaciones.js" />"></script>
	</head>
	<body>
		<div class="logo"></div>
		<div class="box">
			<div class="title"></div>
			<div class="gift">
				<div class="gift-content">
					<div class="ico-gift"></div>
					<div class="text">
						<h2>
							&iexcl;Válido por un regalo! 
						</h2>
					</div>
				</div>
			</div>
			<div class="form">
				<p class="text-orange">Confirma la entrega de tu regalo ingresando los siguientes datos</p>
				<form action="register" method="post" onsubmit="return validate(this);">
					<p>
						<input type="text" placeholder="Nombre completo" name="nombre">
					</p>
					<p>
						<input type="email" placeholder="Correo Electr&oacute;nico" name="email">
						<input type="hidden" value="<%=request.getParameter("id") %>" name="idSha">
					</p>
					<p>
						<input type='submit' value='Registrar' id="registraBtn"/>
					</p>
					<p>
						Te esperamos al cóctel y conferencia magistral<br>
						el Jueves 05 de Marzo 7:30 pm <br> 
						Hyatt Regency Polanco Salón G.
					</p>
					<p>Tu regalo se activar&aacute; el d&iacute;a del evento</p>
				</form>
			</div>
		</div>
		
	</body>
</html>