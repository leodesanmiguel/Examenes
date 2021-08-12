package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControladorLogin
 */
@WebServlet("/ControladorLogin")
public class ControladorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorLogin() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doOptions(HttpServletRequest, HttpServletResponse)
	 * 
	 * Algoritmo:
	 * 	1) Recibir la acción desde la pantalla de index.jsp
	 * 	2) Evaluar la acción si es nula o tiene algun valor importante.
	 *  
	 * 		a) accion=Ingresar		--> ControladorPrincipal?accion=Principal
	 *                                  Pasa al Servlet ControlPrincipal 
	 *      b) sino vuelve a index.jsp 
	 */
	protected void doOptions(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion=request.getParameter("accion");
		
		if (accion != null && accion.equalsIgnoreCase("Ingresar")) {
			request.getRequestDispatcher("ControladorPrincipal?accion=Principal").forward(request, response);
		
		} else {
			request.getRequestDispatcher("index.jsp").forward(request, response);
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
