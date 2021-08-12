package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Curso;
import modeloDAO.CursoDAO;

/**
 * Servlet implementation class ControladorPrincipal
 */
@WebServlet("/ControladorPrincipal")
public class ControladorPrincipal extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	CursoDAO curDao;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorPrincipal() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doOptions(HttpServletRequest, HttpServletResponse)
	 * 
	 * 1) Recibe la accion desde controladorLogin 
	 * 2) Evalua la acción con SWITCH 
	 * 		a) accion=Principal --> Principal.jsp
	 * 		b) accion=...		--> ... .jps 
	 */
	protected void doOptions(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion=request.getParameter("accion");
		switch (accion) { 
		case "Principal":
			curDao=new CursoDAO();
			List<Curso>cursos=curDao.listarCursos();

			request.setAttribute("Cursos", cursos);
			
			request.getRequestDispatcher("Principal.jsp").forward(request, response);
			
			break;
		default:
			break;
		}
	}

	
	   /**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 * Recibe al botón que activa el doPOST y lo envia a doOption.
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doOptions(request, response);
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 * Recibe al botón que activa el doPOST y lo envia a doOption.
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doOptions(request, response);
		}
}
