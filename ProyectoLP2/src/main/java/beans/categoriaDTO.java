package beans;

public class categoriaDTO {
	
	public String codCategoria, nomCategoria;

	public String getCodCategoria() {
		return codCategoria;
	}

	public void setCodCategoria(String codCategoria) {
		this.codCategoria = codCategoria;
	}

	public String getNomCategoria() {
		return nomCategoria;
	}

	public void setNomCategoria(String nomCategoria) {
		this.nomCategoria = nomCategoria;
	}

	public categoriaDTO(String codCategoria, String nomCategoria) {
		super();
		this.codCategoria = codCategoria;
		this.nomCategoria = nomCategoria;
	}

	public categoriaDTO() {
		super();
	}
	
	
	
	
}
