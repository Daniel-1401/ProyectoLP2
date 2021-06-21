package DAO;

import interfaces.administradorDAO;
import interfaces.carritoDAO;
import interfaces.categoriaDAO;
import interfaces.facturaDAO;
import interfaces.marcaDAO;
import interfaces.productoDAO;
import interfaces.usuarioDAO;
import mantenimiento.MySQLAdministradorDAO;
import mantenimiento.MySQLCarritoDAO;
import mantenimiento.MySQLCategoriaDAO;
import mantenimiento.MySQLFacturaDAO;
import mantenimiento.MySQLMarcaDAO;
import mantenimiento.MySQLProductoDAO;
import mantenimiento.MySQLUsuarioDAO;

public class MySQLDAOFactory extends DAOFactory{

	@Override
	public administradorDAO getAdministradorDAO() {
		// TODO Auto-generated method stub
		return new MySQLAdministradorDAO();
	}

	@Override
	public carritoDAO getCarritoDAO() {
		// TODO Auto-generated method stub
		return new MySQLCarritoDAO();
	}

	@Override
	public categoriaDAO getCategoriaDAO() {
		// TODO Auto-generated method stub
		return new MySQLCategoriaDAO();
	}

	@Override
	public facturaDAO getFacturaDAO() {
		// TODO Auto-generated method stub
		return new MySQLFacturaDAO();
	}

	@Override
	public marcaDAO getMarcaDAO() {
		// TODO Auto-generated method stub
		return new MySQLMarcaDAO();
	}

	@Override
	public productoDAO getProductoDAO() {
		// TODO Auto-generated method stub
		return new MySQLProductoDAO();
	}

	@Override
	public usuarioDAO getUsuarioDAO() {
		// TODO Auto-generated method stub
		return new MySQLUsuarioDAO();
	}

	
}
