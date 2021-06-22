package etiquetas;

import java.util.ArrayList;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import DAO.DAOFactory;
import beans.cpuDTO;
import netscape.javascript.JSException;

public class cboCPU_tag extends TagSupport{
	public int doStartTag() throws JSException{
		JspWriter jsw = pageContext.getOut();
		try {
			DAOFactory fabrica = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ArrayList<cpuDTO> lista = fabrica.getCpuDAO().listarCPU();
			jsw.println("<option value='-1'>Seleccione</option");
			for(cpuDTO cpu : lista) {
				jsw.println("<option value="+ cpu.getCodCPU()+">"+cpu.getNomCPU()+"</option");
			}
		} catch (Exception e) {
			System.out.println("Error en el cbo de CPU: " + e.getMessage());
		}
		return SKIP_BODY;
	}
	public int doEndTag() throws JspException{
		return EVAL_PAGE;
	}
}
