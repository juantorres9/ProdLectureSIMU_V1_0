package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.CycleTrs;


public class ControleurPhase2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//JSP pages deux 
	public static final String LECTURE="lecture.jsp";
	public static final String PRESENTATION="/WEB-INF/presentation.jsp";
	//ClassesMetier/Base
	CycleTrs beanCycle;
	//Classes Modeles
	

    public ControleurPhase2() {
        super();
   
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher(PRESENTATION).forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		//Instatiation des objets	
		beanCycle=new CycleTrs();
		//Etape5 envoi de Bean enregistrer vers page validation
		request.setAttribute("bean", beanCycle);
		this.getServletContext().getRequestDispatcher(PRESENTATION).forward(request, response);
	}

}
