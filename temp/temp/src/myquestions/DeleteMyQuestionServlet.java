package myquestions;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Applogic;

/**
 * Servlet implementation class DeleteMyQuestionServlet
 */
@WebServlet("/DeleteMyQuestionServlet")
public class DeleteMyQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMyQuestionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in servlet of DeleteMyQuestionServlet");
		int qid = Integer.parseInt(request.getParameter("qid"));
		int uid = Integer.parseInt(request.getParameter("uid"));
		Applogic.DeleteMyQuestion(qid);
		response.sendRedirect("MyQuestionsServlet");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
