package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Applogic;
import beans.answerData;
import beans.questionData;

/**
 * Servlet implementation class questionAnswerServlet
 */
@WebServlet("/questionAnswerServlet")
public class questionAnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public questionAnswerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String qid=request.getParameter("id");
		ArrayList<answerData> adata=Applogic.QuestionAnswer(Integer.parseInt(qid));
		
		
		
//ArrayList<answerData> a=Applogic.getAnswers();
		
		if(adata.size()>=0){
			System.out.println("in serv");
			request.setAttribute("qdata", adata);	
		request.getRequestDispatcher("qpage.jsp").forward(request, response);
		}
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
