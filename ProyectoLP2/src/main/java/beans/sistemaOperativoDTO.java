package beans;

public class sistemaOperativoDTO {

	public String codSO, nomSO;

	public String getCodSO() {
		return codSO;
	}

	public void setCodSO(String codSO) {
		this.codSO = codSO;
	}

	public String getNomSO() {
		return nomSO;
	}

	public void setNomSO(String nomSO) {
		this.nomSO = nomSO;
	}

	public sistemaOperativoDTO(String codSO, String nomSO) {
		super();
		this.codSO = codSO;
		this.nomSO = nomSO;
	}

	public sistemaOperativoDTO() {
		super();
	}
	
	
	
}
