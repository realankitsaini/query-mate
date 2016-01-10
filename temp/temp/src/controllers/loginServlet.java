package controllers;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Applogic;
import beans.LoginData;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u=	request.getParameter("login-username");
		String p=	request.getParameter("login-password");
		
		LoginData l = new LoginData();
		l.setName(u);
		l.setPass(p);
		try{
		ResultSet result=	Applogic.checklogin(l);
		
		if(result.next()){
			
			HttpSession s=request.getSession();
			s.setAttribute("username", u);
			s.setAttribute("uid", result.getString("uid"));
		//calling servlet for questions
			
			response.sendRedirect("questionServlet");
		
		}else{
			response.sendRedirect("page-login.html");	
		}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
