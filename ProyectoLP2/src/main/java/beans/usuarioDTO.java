package beans;

public class usuarioDTO {

	public String codUsu;
	public int codTipoUsu;
	public String email, contrase�a, nomUsu, apeUsu;
	

	public void setCodUsu(String codUsu) {
		this.codUsu = codUsu;
	}
	
	public String getCodUsu() {
		return codUsu;
	}

	public int getCodTipoUsu() {
		return codTipoUsu;
	}

	public void setCodTipoUsu(int codTipoUsu) {
		this.codTipoUsu = codTipoUsu;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContrase�a() {
		return contrase�a;
	}

	public void setContrase�a(String contrase�a) {
		this.contrase�a = contrase�a;
	}

	public String getNomUsu() {
		return nomUsu;
	}

	public void setNomUsu(String nomUsu) {
		this.nomUsu = nomUsu;
	}

	public String getApeUsu() {
		return apeUsu;
	}

	public void setApeUsu(String apeUsu) {
		this.apeUsu = apeUsu;
	}

	public usuarioDTO(String codUsu, int codTipoUsu, String email, String contrase�a, String nomUsu, String apeUsu) {
		super();
		this.codUsu = codUsu;
		this.codTipoUsu = codTipoUsu;
		this.email = email;
		this.contrase�a = contrase�a;
		this.nomUsu = nomUsu;
		this.apeUsu = apeUsu;
	}
	
	@Override
	public String toString() {
		return "usuarioDTO [codUsu=" + codUsu + ", codTipoUsu=" + codTipoUsu + ", email=" + email + ", contrase�a="
				+ contrase�a + ", nomUsu=" + nomUsu + ", apeUsu=" + apeUsu + "]";
	}

	public usuarioDTO() {
		super();
	}

}
