package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.UserDao;
import com.db.DBConnection;
import com.entity.User;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		
		
try {
			
			String fullName = request.getParameter("fullname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");	
			
			User u = new User(fullName, email, password);
			
			UserDao dao = new UserDao(DBConnection.getConn());

			
			boolean f = dao.register(u);
			
			HttpSession session = request.getSession();
			
			if(f) 
			{
			session.setAttribute("sucMsg", "Registered Sucessfully!");
			response.sendRedirect("admin/signup.jsp");

		} else {
			session.setAttribute("errorMsg", "Registration Failed!");
			response.sendRedirect("admin/signup.jsp");
		}

			
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
