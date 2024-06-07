package com.chainsys.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.model.MoviePojo;

/**
 * Servlet implementation class Readservlets
 */
@WebServlet("/Readservlets")
public class Readservlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private List<MoviePojo> list = new ArrayList<>();
    MoviePojo details = new MoviePojo();
	ImpMovie imp=new ImpMovie();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Readservlets() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter pw=response.getWriter();
        String username = request.getParameter("username");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
		try {
			list=imp.retriveDetails();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//      System.out.println(list);
      System.out.println("Displayed successfully..");
        request.setAttribute("list", list);
         RequestDispatcher requestDispatcher=request.getRequestDispatcher("movie.jsp");
         requestDispatcher.forward(request, response);

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
