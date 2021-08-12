<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang=es>

<head>
<meta charset="ISO-8859-1">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />

<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet"
	href="./vista/css/materialize.min.css" media="screen,projection" />
<link rel="stylesheet" href="./vista/css/estilos.css">

<title>Hello, world!</title>
</head>

<body>
	<div class="main">
		<div class="col s3 m6">
			<form action="ControladorLogin" method="POST">
				<div class="card horizontal">
					<div class="card-image cardlogo">
						<h5 class="header center">LOGIN</h5>
						<div class="logo"></div>
					</div>
					<div class="card-stacked">
						<div class="card-content">
  
								<div class="input-field col s12">
									<i class="material-icons prefix">email</i> <input
										id="email" type="email" name="email" class="validate"
										placeholder="Correo electrónico">
								</div>

								<div class="input-field col s12">
									<i class="material-icons prefix">password</i> <input
										  type="password" name="password" class="validate"
										placeholder="Contraseña">
								</div>
					

						</div>
						<div class="card-action right">
							<button type="submit" name="accion" class="btn" value="Ingresar">Iniciar
								Sesión</button>
						</div>
					</div>
				</div>
			</form>
		</div>

	</div>
	<div class="footer">
		<div class="col s6 m3">
			<p class="material-icons md-48"></p>
			<i class="fa fa-copyright" aria-hidden="true"></i>


		</div>

	</div>

	<!--JavaScript at end of body for optimized loading-->
	<script type="text/javascript" src="./vista/js/materialize.min.js"></script>


</body>

</html>