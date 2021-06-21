package beans;

public class productoDTO {
	
	public String 	codProd, nomProd, codMarca, modelProd, codCPU, desProd,
					codTipoDD, codGPU, codCategoria, codSO, precioV;

	public String getCodProd() {
		return codProd;
	}

	public void setCodProd(String codProd) {
		this.codProd = codProd;
	}

	public String getNomProd() {
		return nomProd;
	}

	public void setNomProd(String nomProd) {
		this.nomProd = nomProd;
	}

	public String getCodMarca() {
		return codMarca;
	}

	public void setCodMarca(String codMarca) {
		this.codMarca = codMarca;
	}

	public String getModelProd() {
		return modelProd;
	}

	public void setModelProd(String modelProd) {
		this.modelProd = modelProd;
	}

	public String getCodCPU() {
		return codCPU;
	}

	public void setCodCPU(String codCPU) {
		this.codCPU = codCPU;
	}

	public String getDesProd() {
		return desProd;
	}

	public void setDesProd(String desProd) {
		this.desProd = desProd;
	}

	public String getCodTipoDD() {
		return codTipoDD;
	}

	public void setCodTipoDD(String codTipoDD) {
		this.codTipoDD = codTipoDD;
	}

	public String getCodGPU() {
		return codGPU;
	}

	public void setCodGPU(String codGPU) {
		this.codGPU = codGPU;
	}

	public String getCodCategoria() {
		return codCategoria;
	}

	public void setCodCategoria(String codCategoria) {
		this.codCategoria = codCategoria;
	}

	public String getCodSO() {
		return codSO;
	}

	public void setCodSO(String codSO) {
		this.codSO = codSO;
	}

	public String getPrecioV() {
		return precioV;
	}

	public void setPrecioV(String precioV) {
		this.precioV = precioV;
	}

	public productoDTO(String codProd, String nomProd, String codMarca, String modelProd, String codCPU, String desProd,
			String codTipoDD, String codGPU, String codCategoria, String codSO, String precioV) {
		super();
		this.codProd = codProd;
		this.nomProd = nomProd;
		this.codMarca = codMarca;
		this.modelProd = modelProd;
		this.codCPU = codCPU;
		this.desProd = desProd;
		this.codTipoDD = codTipoDD;
		this.codGPU = codGPU;
		this.codCategoria = codCategoria;
		this.codSO = codSO;
		this.precioV = precioV;
	}

	public productoDTO() {
		super();
	}
	
	

}
