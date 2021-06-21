package beans;

public class paisDTO {
	
	public String codPais, nomPais;

	public String getCodPais() {
		return codPais;
	}

	public void setCodPais(String codPais) {
		this.codPais = codPais;
	}

	public String getNomPais() {
		return nomPais;
	}

	public void setNomPais(String nomPais) {
		this.nomPais = nomPais;
	}

	public paisDTO(String codPais, String nomPais) {
		super();
		this.codPais = codPais;
		this.nomPais = nomPais;
	}

	public paisDTO() {
		super();
	}
	
	
	
	
}
