

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.dao.ImpMovie;
import com.chainsys.model.Bookpojo;
import com.chainsys.model.MoviePojo;

/**
 * Servlet implementation class Seatservlet
 */
@WebServlet("/Seatservlet")
public class Seatservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 MoviePojo details = new MoviePojo();

	    Bookpojo book = new Bookpojo();
	    ImpMovie imp = new ImpMovie();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Seatservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	      PrintWriter out = response.getWriter();
	        HttpSession session = request.getSession();
	        if (session != null) {
	            String movie;
	            String showdate;
	            String showtime;
	            String theater;
	            String screen;
	            String seat;
	            String username = (String) session.getAttribute("username");
	            System.out.println(username);
	            
	            book.setUsername(username);
	            screen = request.getParameter("screen");
	            System.out.println(screen);

	            book.setScreen(screen);
	            movie = request.getParameter("movie");
	            book.setMovie(movie);
	           int  ticketno =Integer.parseInt(request.getParameter("ticketno"));   
	           book.setTicketno(ticketno);
	            showdate = request.getParameter("showDate");
	            System.out.println(showdate);
	            book.setShowDate(showdate);
	            showtime = request.getParameter("showtime");
	            book.setShowtime(showtime);
	            theater = request.getParameter("theater");
	            book.setTheater(theater);
	            seat = request.getParameter("seat");
	            book.setSeat(seat);
	            try {
	                imp.booking(book);
	                response.sendRedirect("seat.jsp");
	            } 
				 catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
	        } else {
	            response.sendRedirect("book.jsp");
	        }
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
