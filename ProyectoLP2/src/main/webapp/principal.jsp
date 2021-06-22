
<%@page import="beans.usuarioDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
		// validar si ha logueado
		usuarioDTO u = (usuarioDTO) request.getSession().getAttribute("u");
		if(u == null){
			response.sendRedirect("login.jsp");
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
	<div id="contenedor">
		<header>
		<%-- LLAMAMOS A LA EQTIQUETA CABECERA --%>
			<tools:cabecera/>
			<p>Ud se ha identificado como : <strong>${u.nombre } ${u.apellido } </strong></p>
		</header>
			
		<main>
			<nav style="width: 25%;float: left;">
				<ul>
					<%--MUESTRA OPCIONES D EMENU CREADO EN ETIQUETAS --%>
					<tools:menuPrincipal tipo ="${u.tipo }"/>
								
				</ul>
			</nav>
			<section style="width: 65%;float: left;">
				<h1>Bienvenidos</h1>
			</section>
		</main>
		<footer>
		</footer>
	</div>
	
</body>
</html>