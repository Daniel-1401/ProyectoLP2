<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Page Title</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel="stylesheet icon" href="../img/logo.png">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <!-- jQuery library -->
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!--  CSS DATATABLES -->
        <link rel="stylesheet"
        href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css" >
        <!-- JS DATATABLES -->
        <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js" ></script>
    
        <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/cssPagAdmin/GeneralCRUD.css">
        <link rel="stylesheet" href="css/cssPagAdmin/crudListar.css">
        <link rel="stylesheet" href="css/cssPagAdmin/crudEliminar.css">
        
    </head>
    <body>
        <main>
            <div class="content">
                <div class="logo">
                    <img class="imglogo" src="img/logo.png" alt="">
                </div>
                <div class="usuario">
                    <div class="iconUsuario">
                        <img src="img/login.png" alt="">
                    </div>
                    <div class="nombre">
                        <h2>$NOMBRE$</h2>
                    </div>
                </div>
                <div class="barraMenu">
                    <div class="userMenu">
                        <div class="imgUser">
                            <img src="img/login.png" alt="">
                        </div>
                        <h2>$full nombre$</h2>
                    </div>
                    <br>
                    <div class="menu">
                        <h2>MENU</h2>
                        <div class="accordion" id="accordionPanelsStayOpenExample">
                            <div class="accordion-item colorAccordion">
                              <h2 class="accordion-header " id="panelsStayOpen-headingOne">
                                <button class="accordion-button " type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                                  Mantenimiento
                                </button>
                              </h2>
                              <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
                                <div class="accordion-body ">
                                  <li>
                                    <a href="">Añadir</a>
                                  </li>
                                </div>
                                <div class="accordion-body">
                                  <li>
                                    <a href="">Actualizar</a>
                                  </li>
                                </div>
                              </div>
                            </div>
                            <div class="accordion-item colorAccordion">
                              <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                                  Reporte
                                </button>
                              </h2>
                              <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
                                <div class="accordion-body">
                                  <li>
                                    <a href="">Reporte 1</a>
                                  </li>
                                </div>
                                <div class="accordion-body">
                                  <li>
                                    <a href="">Reporte 2</a>
                                  </li>
                                </div>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="contenido">
                    <div class="container">
                      <table class="table table-hover" id="myTable">
                        <thead>			
                          <tr>
                            <th>IMAGEN</th>
                            <th>MARCA</th>
                            <th>MODELO</th>
                            <th>CATEGORIA</th>
                            <th>STOCK</th>
                            <th>PRECIO</th>
                            <th></th>
                          </tr>							
                        </thead>
                        <tbody>
                          <tr class="grilla_campo">
                            <td>
                              <img alt="imagen de producto" src="img/imgProductos/LaptopLenovo_Legion5_S1.jpg" width="60px;">
                            </td>
                            <td>MARCA 1</td>
                            <td>MODELO 1</td>
                            <td>CATEGORIA 1</td>
                            <td>100</td>
                            <td>
                              9999.99
                              <!-- <fmt:setLocale value="es_PE"/>
                              <fmt:formatNumber type="currency" value="${x.precio }" /> -->
                            </td>
                            <td>
                              <div class="d-grid gap-2 d-md-block">
                                <form action="">
                                  <button class="btn btn-primary" type="button">Modificar</button>
                                  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Eliminar</button>
                                </form>
                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                  <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                      <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Eliminar producto</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                      </div>
                                      <form action="">
                                        <div class="modal-body">
                                            <div class="form-group">
                                              <label for="exampleInputEmail1">Codigo:</label>
                                              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" disabled>
                                            </div>
                                            </br>
                                            <div class="modalEliminar">
                                              <div class="form-group contenedorImg">
                                                <div class="ContenedorimagenProductoEliminar">
                                                  <div class="imagenProdEliminar">
                                                    <img class="imagenEliminar" alt="imagen de producto" src="img/imgProductos/LaptopLenovo_Legion5_S1.jpg" width="60px;">
                                                  </div>              
                                                </div>                                      
                                              </div>
                                              <div class="botonesEliminar">
                                                  <div class="botonDelete d-grid gap-2">
                                                    <button class="btn btn-primary" type="button">ELIMINAR</button>
                                                  </div>
                                              </div>
                                            </div>
                                        </div>
                                      </form>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>            
                </div>
            </div>
        </main>
    </body>
    <script>
        $(document).ready( function () {
        $('#myTable').DataTable();
        } );    
    </script>
    </html>