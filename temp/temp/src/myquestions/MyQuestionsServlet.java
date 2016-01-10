package myquestions;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Applogic;
import beans.questionData;

/**
 * Servlet implementation class MyQuestionsServlet
 */
@WebServlet("/MyQuestionsServlet")
public class MyQuestionsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyQuestionsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		System.out.println("testin...");
		int uid= Integer.parseInt((String)session.getAttribute("uid"));
		System.out.println("in servlet");
		ArrayList<questionData> questions=Applogic.getMyQuestions(uid);
		
		if(questions.size()>=0){
			request.setAttribute("questions", questions);
			request.getRequestDispatcher("myquestions.jsp").forward(request, response);
			
		}else{
			
			response.sendRedirect("myquestions.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
