package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.SpecialistDao;
import com.db.DBConnection;

/**
 * Servlet implementation class AddSpecialist
 */
public class AddSpecialist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSpecialist() {
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

		
		String specName = request.getParameter("specName");

		SpecialistDao dao = new SpecialistDao(DBConnection.getConn());
		boolean f = dao.addSpecialist(specName);

		HttpSession session = request.getSession();

		if (f) {
			session.setAttribute("succMsg", "Specialist Added");
			response.sendRedirect("admin/index.jsp");
		} else {
			session.setAttribute("errorMsg", "Error");
			response.sendRedirect("admin/index.jsp");
		}
		
		
	}

}
