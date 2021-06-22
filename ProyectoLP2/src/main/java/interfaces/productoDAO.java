package interfaces;

import beans.insertProductoDTO;
import beans.listarproductoDTO;

public interface productoDAO {
	
//	public int registrar (insertProductoDTO prod);
	
	public int actualizar (listarproductoDTO prod);
	
	public int eliminar (listarproductoDTO prod);
	
}
