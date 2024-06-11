package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.dao.ImpMovie;
import com.chainsys.model.Bookpojo;
import com.chainsys.model.MoviePojo;

@WebServlet("/Bookingservlet")
public class Bookingservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<Bookpojo> list = new ArrayList<>();
    MoviePojo details = new MoviePojo();

    Bookpojo book = new Bookpojo();
    ImpMovie imp = new ImpMovie();

    public Bookingservlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session != null) {
            String movie;
            String showdate;
            String showtime;
            String theater;
            String screen;
            String seat;
        	String seatcount;

            String username = (String) session.getAttribute("username");
            System.out.println(username);            
            book.setUsername(username);
            seat = request.getParameter("seat");
            book.setSeat(seat);
            seatcount = request.getParameter("seatCount");
//            book.setSeat(seatcount);
            book.setSeatcount(seatcount);
            screen = request.getParameter("screen");
            book.setScreen(screen);
            movie = request.getParameter("movie");
            book.setMovie(movie);
            showdate = request.getParameter("showDate");
            System.out.println(showdate);
            book.setShowDate(showdate);
            showtime = request.getParameter("showtime");
            book.setShowtime(showtime);
            theater = request.getParameter("theater");
            book.setTheater(theater);
            
            try {
                imp.booking(book);
                response.sendRedirect("index.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            response.sendRedirect("seat.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
