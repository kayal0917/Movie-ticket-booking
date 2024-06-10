package com.chainsys.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.model.MoviePojo;

/**
 * Servlet implementation class Signinservlet
 */
@WebServlet("/Signinservlet")
public class Signinservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private List<MoviePojo> list = new ArrayList<>();
	    MoviePojo details = new MoviePojo();
		ImpMovie imp=new ImpMovie();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signinservlet() {
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		    String username = request.getParameter("username");
		    String password = request.getParameter("password");

		    try {
		        String storedPassword = ImpMovie.checkPassword(username);

		        if (password.equals(storedPassword)) {
		            HttpSession session = request.getSession(false);

		            session.setAttribute("username", username);

		            response.sendRedirect("index.jsp");
		            System.out.println(username);
		        } else {
		            response.sendRedirect("signinmovie.jsp");
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
 
		  }
		

	}

}
