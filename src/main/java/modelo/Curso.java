/**
 * 
 */
package modelo;

/**
 * @author Leonardo Martinez la clase Curso tiene los detalles de cada Materia.
 *
 */
public class Curso {

	private int idCurso;
	private String materia;
	private int docenteId;
	private int seccionId;
	private int gradoId;
	private String estado;
	//
	private String imagen;

	


	public Curso() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param idCurso
	 * @param materia
	 * @param docenteId
	 * @param seccionId
	 * @param gradoId
	 * @param estestadoado
	 */
	
	
	public Curso(int idCurso, String materia, int docenteId, int seccionId, int gradoId, String estado) {
		super();
		this.idCurso = idCurso;
		this.materia = materia;
		this.docenteId = docenteId;
		this.seccionId = seccionId;
		this.gradoId = gradoId;
	}

	/**
	 * @return the idCurso
	 */
	public int getIdCurso() {
		return idCurso;
	}

	/**
	 * @param idCurso the idCurso to set
	 */
	public void setIdCurso(int idCurso) {
		this.idCurso = idCurso;
	}

	/**
	 * @return the materia
	 */
	public String getMateria() {
		return materia;
	}

	/**
	 * @param materia the materia to set
	 */
	public void setMateria(String materia) {
		this.materia = materia;
	}

	/**
	 * @return the docenteId
	 */
	public int getDocenteId() {
		return docenteId;
	}

	/**
	 * @param docenteId the docenteId to set
	 */
	public void setDocenteId(int docenteId) {
		this.docenteId = docenteId;
	}

	/**
	 * @return the seccionId
	 */
	public int getSeccionId() {
		return seccionId;
	}

	/**
	 * @param seccionId the seccionId to set
	 */
	public void setSeccionId(int seccionId) {
		this.seccionId = seccionId;
	}

	/**
	 * @return the gradoId
	 */
	public int getGradoId() {
		return gradoId;
	}

	/**
	 * @param gradoId the gradoId to set
	 */
	public void setGradoId(int gradoId) {
		this.gradoId = gradoId;
	}

	/**
	 * @return the estado
	 */
	public String getEstado() {
		return estado;
	}

	/**
	 * @param estado the estado to set
	 */
	public void setEstado(String estado) {
		this.estado = estado;
	}

	/**
	 * @return the imagen
	 */
	public String getImagen() {
		return imagen;
	}

	/**
	 * @param imagen the imagen to set
	 */
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
	
}
