package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Applogic;
import beans.answerData;

/**
 * Servlet implementation class inputAnswerServlet
 */
@WebServlet("/inputAnswerServlet")
public class inputAnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inputAnswerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String AnsTitle= request.getParameter("ans-title");
		String AnsDetail=request.getParameter("ans-detail");
		String qid= request.getParameter("qid");
		HttpSession s=request.getSession(false);
		answerData ans = new answerData();
		ans.setAnsdetail(AnsDetail);
		ans.setUid(Integer.parseInt((String)s.getAttribute("uid")));
		ans.setAnstitle(AnsTitle);
		ans.setQid(Integer.parseInt(qid));
		
		Applogic.inputAnswer(ans);
		response.sendRedirect("questionServlet");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
