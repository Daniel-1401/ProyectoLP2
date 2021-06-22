package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.listarproductoDTO;
import DAO.DAOFactory;
import interfaces.productoDAO;
import mantenimiento.MySQLProductoDAO;

/**
 * Servlet implementation class productoServlet
 */
@WebServlet(name = "prodServ", urlPatterns = { "/prodServ" })
public class productoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("-- Entro al Servlet de producto --");
		String opc = request.getParameter("opcion");
		opc = (opc == null ? "error" : opc);
		System.out.println("-- Opcion delesccionada: " + opc + " --");
		
		switch(opc) {
		case "r": registrar(request,response); break;
		case "a": actualizar(request,response); break;
		case "e": eliminar(request,response); break;
		case "l": listar(request,response); break;
		case "c": cargar(request,response); break;
		case "q": buscar(request,response); break;
		case "s": seleccionar(request,response); break;
		case "f": filtrar(request,response); break;
		
		default:
			System.out.println("No seleccion� ninguna opci�n");
			
			
			}
		}

		

		private void seleccionar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// Obetener la informacion de un producto y lo envia a la pagina compra
					System.out.println("Ingres� al proceso seleccionar");
			// entradas
					String codigo = request.getParameter("codPro");
					System.out.println(codigo);
			// procesos
					
				//error productoDTO p = new MySQLProductoDAO().buscar(codigo);
			// salidas
					//error		request.getSession().setAttribute("p", p);
					
					//request.getRequestDispatcher("compra.jsp").forward(request, response);
					response.sendRedirect("compra.jsp");
			
		}

		private void cargar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
					System.out.println("Ingres� al proceso listado");
					//obtener el listado del producto, sin usar patron DAO
					//ArrayList<ProductoDTO> lista =  new MySQLProductoDAO().listado();
					
					// Usando ahora si patron DAO
					DAOFactory fabrica = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
					productoDAO pro = fabrica.getProductoDAO();
					
					
					//error		ArrayList<productoDTO> lista = pro.listado();
					//error	System.out.println(lista);
					
					//enviar el listado al JSP 
					//error	request.setAttribute("lstProductos", lista);
					request.getRequestDispatcher("catalogos.jsp").forward(request, response);
					
			
		}

		private void buscar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
					System.out.println("Seleccion� el proceso buscar");
			// entradas
					String codigo = request.getParameter("codPro");
					System.out.println(codigo);
			// procesos
					//error		productoDTO p = new MySQLProductoDAO().buscar(codigo);
			// salidas
					//error		request.setAttribute("p", p);
					request.getRequestDispatcher("mantenimientoproductos.jsp").forward(request, response);
			
		}
		
		private void filtrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			System.out.println("Seleccion� el proceso de filtrado");
			
			
			// entradas
			int codigo = Integer.parseInt(request.getParameter("txtid"));
			System.out.println(codigo);
			
			
			// procesos
			// Usando ahora si patron DAO
			DAOFactory fabrica = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			productoDAO pro = fabrica.getProductoDAO();
			
			//error ArrayList<productoDTO> listxca = pro.listxcat(codigo);
			//error System.out.println(listxca);
		
			//enviar el listado al JSP 
			//error		request.setAttribute("lstProductos", listxca);
					request.getRequestDispatcher("catalogo.jsp").forward(request, response);
			
			
		}

		private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			System.out.println("Ingres� al proceso listado");
			//obtener el listado del producto, sin usar patron DAO
			//ArrayList<ProductoDTO> lista =  new MySQLProductoDAO().listado();
			
			// Usando ahora si patron DAO
			DAOFactory fabrica = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			productoDAO pro = fabrica.getProductoDAO();
			
			//error ArrayList<productoDTO> lista = pro.listado();
			
			//enviar el listado al JSP 
			//error request.setAttribute("lstProductos", lista);
			request.getRequestDispatcher("listado.jsp").forward(request, response);
			
		}
		
		private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
					System.out.println("Entro al proceso eliminar");
			// entradas
					String codigo = request.getParameter("txtid");
					System.out.println(codigo);
			//precesos
					//error	int rs = new MySQLProductoDAO().eliminar(codigo);
			//salidas
					//error	request.setAttribute("eli", rs);
					request.getRequestDispatcher("listado.jsp").forward(request, response);
			
		}

		private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
				System.out.println("entro al proceso actualizar");
			// variables
				String mensaje = "";
				String url;
			//entradas
				String descripcion = request.getParameter("txtdescrip");
				int stock = Integer.parseInt(request.getParameter("stock"));
				int idCategoria = Integer.parseInt(request.getParameter("idcat"));
				double precio = Double.parseDouble(request.getParameter("precio"));
				int estado = Integer.parseInt(request.getParameter("estado"));
				String id = request.getParameter("txtid");
				
				//error		ProductoDTO p = new ProductoDTO(descripcion, stock, idCategoria, precio, estado, id);
				//error	System.out.println(p);
			    
			//procesos
				MySQLProductoDAO gu = new MySQLProductoDAO();
				//error	int ok = gu.actualizar(p);
				
				//error	if (ok == 0) {
					mensaje = "Error al registrar los datos,revisar";
					url = "/mantenimientoproductos.jsp";
					//error	}else {
					mensaje = "<script>alert('Registro OK, listo para registrar');</script>";
					url = "/listado.jsp";
				}
				
				// salidas
		//error	request.setAttribute("mensaje", mensaje);
		//error		request.getRequestDispatcher(url).forward(request, response);
			
		//error}

		private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			System.out.println("Ingreso al servlet de registroUsuario");
			// variables
			String mensaje = "";
			String url;
			
			//entradas
			String id = request.getParameter("txtid");
			String descripcion = request.getParameter("txtdescrip");
			int stock = Integer.parseInt(request.getParameter("stock"));
			int idCategoria = Integer.parseInt(request.getParameter("idcat"));
			double precio = Double.parseDouble(request.getParameter("precio"));
			int estado = Integer.parseInt(request.getParameter("estado"));
			//error	ProductoDTO p = new ProductoDTO(id,descripcion, stock, idCategoria, precio, estado);
			
			
			//procesos
			MySQLProductoDAO gu = new MySQLProductoDAO();
			//error	int ok = gu.registrar(p);
			
			//error if (ok == 0) {
				mensaje = "Error al registrar los datos,revisar";
				url = "/RegistroProd.jsp";
				//error }else {
				//error	mensaje = "<script>alert('Registro OK, listo para ingresar');</script>";
				url = "/listado.jsp";
			}
			
			// salidas
		//error request.setAttribute("mensaje", mensaje);
		//error	request.getRequestDispatcher(url).forward(request, response);
			
		}

//error	}