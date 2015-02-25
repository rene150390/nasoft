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
							&iexcl;Tiene un regalo! 
							<span>por asistir a nuestra expo</span>
						</h2>
					</div>
				</div>
			</div>
			<div class="form">
				<p class="text-orange">Redima su regalo ingresando<br>los siguientes datos</p>
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
						Te esperamos el 5 de Marzo<br>
						Hyatt Regency Polanco 7:30pm Sal&oacute;n G
					</p>
					<p>Tu regalo se activar&aacute; el d&iacute;a del evento</p>
				</form>
			</div>
		</div>
		
	</body>
</html>