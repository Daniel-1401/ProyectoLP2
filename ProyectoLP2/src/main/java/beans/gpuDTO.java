package beans;

public class gpuDTO {
	
	public int codGPU;
	
	public String codMarca, nomGPU, cap;

	public int getCodGPU() {
		return codGPU;
	}

	public void setCodGPU(int codGPU) {
		this.codGPU = codGPU;
	}

	public String getCodMarca() {
		return codMarca;
	}

	public void setCodMarca(String codMarca) {
		this.codMarca = codMarca;
	}

	public String getNomGPU() {
		return nomGPU;
	}

	public void setNomGPU(String nomGPU) {
		this.nomGPU = nomGPU;
	}

	public String getCap() {
		return cap;
	}

	public void setCap(String cap) {
		this.cap = cap;
	}

	public gpuDTO(int codGPU, String codMarca, String nomGPU, String cap) {
		super();
		this.codGPU = codGPU;
		this.codMarca = codMarca;
		this.nomGPU = nomGPU;
		this.cap = cap;
	}

	public gpuDTO() {
		super();
	}
	
	
	
	
}
