package beans;

public class cpuDTO {
	
		public int codCPU;

		public String codMarca, nomCPU, modelCPU;

		public int getCodCPU() {
			return codCPU;
		}

		public void setCodCPU(int codCPU) {
			this.codCPU = codCPU;
		}

		public String getCodMarca() {
			return codMarca;
		}

		public void setCodMarca(String codMarca) {
			this.codMarca = codMarca;
		}

		public String getNomCPU() {
			return nomCPU;
		}

		public void setNomCPU(String nomCPU) {
			this.nomCPU = nomCPU;
		}

		public String getModelCPU() {
			return modelCPU;
		}

		public void setModelCPU(String modelCPU) {
			this.modelCPU = modelCPU;
		}

		public cpuDTO(int codCPU, String codMarca, String nomCPU, String modelCPU) {
			super();
			this.codCPU = codCPU;
			this.codMarca = codMarca;
			this.nomCPU = nomCPU;
			this.modelCPU = modelCPU;
		}

		public cpuDTO() {
			super();
		}
			
}
