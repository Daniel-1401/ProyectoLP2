<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Name Page</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet icon" href="../../img/logo.png">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <link rel="stylesheet" type='text/css' media='screen' href='../../css/cssPagCliente/infoProductos.css'>
    <link rel="stylesheet" type='text/css' media='screen' href='../../css/cssPagCliente/header.css'>
    <link rel="stylesheet" type='text/css' media='screen' href='../../css/cssPagCliente/footer.css'>
    <link rel="stylesheet" type="text/css" media="screen" href="../../css/cssPagCliente/barraNavegacion.css">
    
</head>
<body>
    <header class="encabezado">
        <div class="logo">
            <a href="htmlindex.html">
                <img class="imgLogo" src="../../img/logo.png" alt="Imagenlogo">
            </a>
        </div>
    </header>
    <div class="barraUsuario">
        <div class="Usuario">
            <div class="ImagenUsuario">
                <img class="imgUsuario" src="../../img/login.png" alt="imagenUsuario">
            </div>
            <div class="informacionUsuario">
                <div class="nombreUsuario">
                    <p>Nombre Usuario/inicia sesion</p>
                </div>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Iniciar Sesion
                </button>
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Iniciar Sesion</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Email address</label>
                                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    </div>
                                    <div class="form-group">
                                      <label for="exampleInputPassword1">Password</label>
                                      <input type="password" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="botonesModal d-grid gap-1 col-6 mx-auto">
                                        <button class="btn btn-primary" type="button">Ingresar</button>
                                        <p>o</p>
                                        <button class="btn btn-primary" type="button">Registrate</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="Carrito">
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img class="imgCarrito" src="../../img/shop.png" alt="imgCarrito">
                </button>
                <ul class="itemsCarrito dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <ol class="list-group list-group-numbered">
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">LAPTOP</div>
                                Lenovo Legion
                            </div>
                            <div class="ms-2 me-auto">
                                <div class="imgItem">
                                    <img src="../../img/imgProductos/LaptopLenovo_Legion5_S1.jpg" alt="">
                                </div>
                            </div>
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">CANTIDAD</div>
                                <input type="number" min="1" value="1">
                                <button type="button" class="btn btn-secondary">confirmar</button>
                            </div>
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">SUBTOTAL</div>
                                9999.99
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">LAPTOP</div>
                                Lenovo Legion
                            </div>
                            <div class="ms-2 me-auto">
                                <div class="imgItem">
                                    <img src="../../img/imgProductos/LaptopLenovo_Legion5_S1.jpg" alt="">
                                </div>
                            </div>
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">CANTIDAD</div>
                                <input type="number" min="1" value="1">
                                <button type="button" class="btn btn-secondary">confirmar</button>
                            </div>
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">SUBTOTAL</div>
                                9999.99
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">LAPTOP</div>
                                Lenovo Legion
                            </div>
                            <div class="ms-2 me-auto">
                                <div class="imgItem">
                                    <img src="../../img/imgProductos/LaptopLenovo_Legion5_S1.jpg" alt="">
                                </div>
                            </div>
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">CANTIDAD</div>
                                <input type="number" min="1" value="1">
                                <button type="button" class="btn btn-secondary">confirmar</button>
                            </div>
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">SUBTOTAL</div>
                                9999.99
                            </div>
                        </li>
                    </ol>
                    <ul class="list-group list-group-flush">
                        <br>
                        <li class="list-group-item">
                            <h4>TOTAL:</h4>
                            <p>9999.99</p>
                        </li>
                      </ul>
                      <div class="d-grid gap-2">
                        <button class="btn btn-primary" type="button">Button</button>
                      </div>
                </ul>
              </div>
        </div>
    </div>
    <div class="barraNavegacion">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Laptops
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <li><a class="dropdown-item" href="#">Laptops Gamer</a></li>
                      <li><a class="dropdown-item" href="#">Laptops Dise�o</a></li>
                      <li><a class="dropdown-item" href="#">Laptops Trabajo</a></li>
                      <li><a class="dropdown-item" href="#">Notebooks</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
    </div>
    <main>
        <div class="contenido">
            <div class="Producto">
                <div class="ImagenesProducto">
                    <p>
                        <img class="imgPrincipal" src="../../img/imgProductos/LaptopLenovo_Legion5_S1.jpg" alt="">
                    </p>
                    
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
            <div class="ContenedorEspecificaciones">
                <div class="Especificaciones">
                    <section class="tablaEspecificaciones">
                        <div class="tituloEspecificaciones">
                            <h2>Especificaciones</h2>
                        </div>
                        <div class="cuerpoEspecificaciones">
                            <table class="tabla">
                                <tbody class="tabla cuerpoTabla">
                                    <tr class="RowSpecifiction">
                                        <td class="propiedadName">Procesador</td>
                                        <td class="propiedadValor">Intel Core i7 10ma Gen.</td>
                                    </tr>
                                    <tr class="RowSpecifiction">
                                        <td class="propiedadName">Procesador</td>
                                        <td class="propiedadValor">Intel Core i7 10ma Gen.</td>
                                    </tr>
                                    <tr class="RowSpecifiction">
                                        <td class="propiedadName">Procesador</td>
                                        <td class="propiedadValor">Intel Core i7 10ma Gen.</td>
                                    </tr>
                                    <tr class="RowSpecifiction">
                                        <td class="propiedadName">Procesador</td>
                                        <td class="propiedadValor">Intel Core i7 10ma Gen.</td>
                                    </tr>
                                    <tr class="RowSpecifiction">
                                        <td class="propiedadName">Procesador</td>
                                        <td class="propiedadValor">Intel Core i7 10ma Gen.</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        
    </main>
    <footer>
        <div class="pieDePagina">
            <div>
                <p>�2021 - Grupo Bombastic</p>
            </div> 
            <div>
                <img src="../../img/iconVisa.png" alt="">
                <img src="../../img/iconPagoEfectivo.png" alt="">
            </div>
        </div>
    </footer>
</body>
</html>