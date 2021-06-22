package interfaces;

import beans.listarproductoDTO;

public interface productoDAO {
	
	public int registrar (listarproductoDTO prod);
	
	public int actualizar (listarproductoDTO prod);
	
	public int eliminar (listarproductoDTO prod);
	
}
