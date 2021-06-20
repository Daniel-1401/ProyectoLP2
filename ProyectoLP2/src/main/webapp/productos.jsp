<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" type='text/css' media='screen' href='css/productos.css'>
    <link rel="stylesheet" type='text/css' media='screen' href='css/header.css'>
    <link rel="stylesheet" type='text/css' media='screen' href='css/footer.css'>
    <link rel="stylesheet icon" href="img/logo.png">
</head>
<body>
	<header class="encabezado">
        <div class="logo">
            <a href="index.html">
                <img class="imgLogo" src="img/logo.png" alt="Imagenlogo">
            </a>
        </div>
    </header>
    <nav class="navegacion">
        <div class="barraUsuario">
            <div class="Usuario">
                <div class="ImagenUsuario">
                    <img class="imgUsuario" src="img/login.png" alt="imagenUsuario">
                </div>
                <div class="informacionUsuario">
                    <div class="nombreUsuario">
                        <p>Nombre Usuario</p>
                    </div>
                    <div class="sesionUsuario">
                        <p>Sign in|Log out</p>
                    </div>
                </div>
            </div>
            <div class="Carrito">
                <div class="ImagenCarrito">
                    <img class="imgCarrito" src="img/shop.png" alt="imgCarrito">
                </div>
            </div>
        </div>
        <div class="barraNavegacion">
            <ul class="NavCategoria"> 
                <li class="Categoria">
                    <a href="#">
                        <p>Computaci�n</p>
                    </a>
                    <!-- <ul class="NavSubCategoria">
                        <li class="SubCategoria">
                            <a href="#">
                                <span>Laptops</span>
                            </a>
                            <ul class="NavSubCategoria">
                                <li class="SubCategoria">
                                    <a href="#">
                                        <span>Laptops</span>
                                    </a>
                                </li>
                                <li class="SubCategoria">
                                    <a href="#">
                                        <span>Laptops Gamer</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="SubCategoria">
                            <a href="#">
                                <span>Monitores</span>
                            </a>
                            <ul class="NavSubCategoria">
                                <li class="SubCategoria">
                                    <a href="#">
                                        <span>Monitores de Escritorio</span>
                                    </a>
                                </li>
                                <li class="SubCategoria">
                                    <a href="#">
                                        <span>Monitores Gamer</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul> -->
                </li>                     
            </ul>
        </div>
    </nav>
    <main>
        <div class="contenido">
            <section>
                <div class="filtros">
                    <dl class="FiltroMarca">
                        <dt>Marca</dt>
                        <dd>
                            <ol>
                                <li>
                                    <a href="#">Marca1</a>
                                </li>
                                <li>
                                    <a href="#">Marca2</a>
                                </li>
                                <li>
                                    <a href="#">Marca3</a>
                                </li>
                            </ol>
                        </dd>
                    </dl>
                    <dl class="FiltroPrecio">
                        <dt>Marca</dt>
                        <dd>
                            <ol>
                                <li>
                                    <a href="#">Precio1</a>
                                </li>
                                <li>
                                    <a href="#">Precio2</a>
                                </li>
                                <li>
                                    <a href="#">Precio3</a>
                                </li>
                            </ol>
                        </dd>
                    </dl>
                </div>
            </section>
            <div class="CatalogoProductos">
                <div class="toolBar">
                    <p>Total de articulos: XX</p>
                    <div class="OrderBy">
                        <p>Ordenar por </p>
                        <select name="" id="">
                            <option value="">Marca</option>
                            <option value="">Precio</option>
                        </select>
                    </div>
                </div>
                <div class="Productos">
                    <div class="ProductoItem">
                        <a href="compraProducto.html">
                        <img src="img/imgProductos/LaptopLenovo_YogaSlim7.jpg" alt="">
                        <h3 class="infoProducto">Lenovo</h3>
                        <h4 class="infoProducto">LAPTOP LENOVO YOGA SLIM 7</h4>
                        <p class="infoProducto">S/. 3500.00</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="pieDePagina">
            <div>
                <p>�2021 - Avalos Carlos</p>
            </div> 
            <div>
                <img src="img/iconVisa.png" alt="">
                <img src="img/iconPagoEfectivo.png" alt="">
            </div>
        </div>
    </footer>
</body>
</html>