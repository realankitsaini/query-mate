package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Applogic;
import beans.questionData;

/**
 * Servlet implementation class askQuestionServlet
 */
@WebServlet("/askQuestionServlet")
public class askQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public askQuestionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u=	request.getParameter("question-title");
		String e=	request.getParameter("question-detail");
		String t=	request.getParameter("tags");
		questionData que = new questionData();
		que.setQuestion(u);
		que.setQuestionDetails(e);
		que.setCategory(t);
		HttpSession s=request.getSession(false);
		String uid = (String) s.getAttribute("uid")	;
		que.setUserid(Integer.parseInt(uid));
		Applogic.inputQuestion(que);
		response.sendRedirect("questionServlet");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
