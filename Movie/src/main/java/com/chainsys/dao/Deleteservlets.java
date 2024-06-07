package com.chainsys.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.model.MoviePojo;

/**
 * Servlet implementation class Deleteservlets
 */
@WebServlet("/Deleteservlets")
public class Deleteservlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<MoviePojo>list=new ArrayList<>();
	MoviePojo details=new MoviePojo();
	ImpMovie imp=new ImpMovie();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deleteservlets() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		    String username = request.getParameter("username");
		    try {
		        imp.DeleteEmployee(username);
		        List<MoviePojo> list = imp.retriveDetails(); // Retrieve updated list after deletion
		        request.setAttribute("list", list);
		        request.getRequestDispatcher("movie.jsp").forward(request, response);
		    } catch (ClassNotFoundException | SQLException e) {
		        e.printStackTrace();
		    }
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
