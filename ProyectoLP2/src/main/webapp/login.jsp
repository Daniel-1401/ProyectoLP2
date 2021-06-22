<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</head>

<body>
	<div style="margin-left: 20%; width: 60%">
		<h2>Acceso al Sistema</h2>
		<form action="us" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Usuario</label> <input type="email"
					class="form-control" id="exampleInputEmail1"
					placeholder="Ingrese su correo" name="txtusuario">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Contraseña</label> <input
					type="password" class="form-control" id="exampleInputPassword1"
					placeholder="Ingrese Contraseña" name="txtclave">
			</div>
			<button type="submit" class="btn btn-primary" name="opcion" value="l">INGRESAR</button>
		</form>

		<br>
		<p>
			Para registrar una nueva cuenta, pulse <a href="registro.jsp">
				aquí </a>
		</p>
		<br>
		<%--MUESTRA EL ATRIBUTO ENVIADO DESDE EL SERVLET --%>
		${mensaje }

	</div>

</body>
</html>