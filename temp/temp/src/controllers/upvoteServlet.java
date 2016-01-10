package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Applogic;
import beans.inputAnswerLike;

/**
 * Servlet implementation class upvoteServlet
 */
@WebServlet("/upvoteServlet")
public class upvoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public upvoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String u=request.getParameter("userName");
	String a[]=u.split("_");
	inputAnswerLike like = new inputAnswerLike();
	
	like.setAid(Integer.parseInt(a[2]));
	like.setUid(Integer.parseInt(a[1]));
	Applogic.inputAnswerLike(like);
	
	 response.getWriter().write("you liked");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
