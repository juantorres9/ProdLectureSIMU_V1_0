package web;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DispatchServ
 */

public class DispatchServ2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//PARAMETRES
	public static final String ID_PAGE="idpage";
	//JSP
	public static final String LECTURE="/lecture.jsp";
	public static final String PRESENTATION="/WEB-INF/presentation.jsp";

	
    public DispatchServ2() {
        super();
    }


	public void init() throws ServletException {
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher(LECTURE).forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Etape0:recuperation de parametres de la requete : idPage 
		String id=request.getParameter(ID_PAGE);
		//Etape1: Choix de la page JSP a redirectioner selon l'Identifiant  
		if(id.equals("presentation")){
			response.sendRedirect(request.getContextPath()+LECTURE);
		}else if (id.equals("machine1")){
			//Forward depuis  lecture.jsp vers la page Presentation.jsp qui contien un Formulaire et un Affichage
			this.getServletContext().getRequestDispatcher(PRESENTATION).forward(request, response);
		}else{
			//Forward par default  vers la page  de lecture.jsp
			this.getServletContext().getRequestDispatcher(LECTURE).forward(request, response);
		}
	}

}
