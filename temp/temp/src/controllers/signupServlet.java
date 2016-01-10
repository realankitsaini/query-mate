package controllers;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import beans.Applogic;
import beans.LoginData;

/**
 * Servlet implementation class signupServlet
 */
@WebServlet("/signupServlet")
@MultipartConfig(maxFileSize = 16177215)
public class signupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Signup Logic
	
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u=	request.getParameter("signup-username");
		String e=	request.getParameter("signup-email");
		String p=	request.getParameter("signup-password");
		
		
		InputStream inputStream = null;

		// obtains the upload file part in this multipart request
		Part filePart = request.getPart("image");
		if (filePart != null) {
			// debug messages
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());

			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
		}
		
		
		
		
		
		LoginData l = new LoginData();
		l.setName(u);
		l.setEmail(e);
		l.setPass(p);
		Applogic.signup(l,inputStream);
		response.sendRedirect("page-login.html");
		
	}

}
