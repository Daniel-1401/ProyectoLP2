package beans;

public class productoDTO {
	
	public String 	codProd, modelProd,desProd;
	
	public String codCategoria, codMarca, codCPU, codGPU, codDD, codSO;
	
	public double precioV;


	
	
	
	

	public String getCodProd() {
		return codProd;
	}







	public void setCodProd(String codProd) {
		this.codProd = codProd;
	}







	public String getModelProd() {
		return modelProd;
	}







	public void setModelProd(String modelProd) {
		this.modelProd = modelProd;
	}







	public String getDesProd() {
		return desProd;
	}







	public void setDesProd(String desProd) {
		this.desProd = desProd;
	}







	public String getCodCategoria() {
		return codCategoria;
	}







	public void setCodCategoria(String codCategoria) {
		this.codCategoria = codCategoria;
	}







	public String getCodMarca() {
		return codMarca;
	}







	public void setCodMarca(String codMarca) {
		this.codMarca = codMarca;
	}







	public String getCodCPU() {
		return codCPU;
	}







	public void setCodCPU(String codCPU) {
		this.codCPU = codCPU;
	}







	public String getCodGPU() {
		return codGPU;
	}







	public void setCodGPU(String codGPU) {
		this.codGPU = codGPU;
	}







	public String getCodDD() {
		return codDD;
	}







	public void setCodDD(String codDD) {
		this.codDD = codDD;
	}







	public String getCodSO() {
		return codSO;
	}







	public void setCodSO(String codSO) {
		this.codSO = codSO;
	}







	public double getPrecioV() {
		return precioV;
	}







	public void setPrecioV(double precioV) {
		this.precioV = precioV;
	}


	public productoDTO(String codProd, String modelProd, String desProd, String codCategoria, String codMarca,
			String codCPU, String codGPU, String codDD, String codSO, double precioV) {
		super();
		this.codProd = codProd;
		this.modelProd = modelProd;
		this.desProd = desProd;
		this.codCategoria = codCategoria;
		this.codMarca = codMarca;
		this.codCPU = codCPU;
		this.codGPU = codGPU;
		this.codDD = codDD;
		this.codSO = codSO;
		this.precioV = precioV;
	}


	public productoDTO() {
		super();
	}
	
	

}
