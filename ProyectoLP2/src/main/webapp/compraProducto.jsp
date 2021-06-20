<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" type='text/css' media='screen' href='css/CompraProductos.css'>
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
                                <li class="SubCategoria">s
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
            <div class="Producto">
                <div class="ImagenesProducto">
                    <p>
                        <img class="imgPrincipal" src="img/imgProductos/LaptopLenovo_Legion5_S1.jpg" alt="">
                    </p>
                    <div class="SliderImagenes">
                        <img class="imgSecundario" src="img/imgProductos/LaptopLenovo_Legion5_S2.jpg" alt="">
                        <img class="imgSecundario" src="img/imgProductos/LaptopLenovo_Legion5_S3.jpg" alt="">
                        <img class="imgSecundario" src="img/imgProductos/LaptopLenovo_Legion5_S4.jpg" alt="">
                    </div>
                </div>
                <div class="ShopProducto">
                    <div class="NameProducto">
                        <h2>$Categoria$ $Marca$ $modelo$</h2>
                    </div>
                    <div class="DescriptionProducto">
                        <p>Descripcion del producto. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Expedita minima eos atque accusantium quas est id architecto maxime corrupti beatae quis ipsa, pariatur necessitatibus error quibusdam voluptas! Omnis, aperiam provident.</p>
                    </div>
                    <div class="PriceProducto">
                        <p>S/. 9999.99</p>
                    </div>
                    <div class="StockProducto">
                        <P>Stock disponible: 99</P>
                    </div>
                    <div class="AddProducto">
                        <form action="">
                            <button>A�ADIR AL CARRITO</button>
                            <div class="cantProd">
                                <label for="">Und:</label>
                                <input type="number" min="1" value="1"> 
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="Especificaciones">
                <h3>Especificaciones</h3>
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