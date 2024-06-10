package com.chainsys.dao;

import java.sql.Connection;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;

import com.chainsys.model.Bookpojo;
import com.chainsys.model.MoviePojo;
import com.chainsys.util.MovieConnection;


public class ImpMovie implements InterMovie {

	public void Signupsevlet(MoviePojo add1) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		System.out.println(add1.getUsername());
		Connection con = MovieConnection.getConnection();
		String add = "insert into users(user_name,email,password)values(?,?,?)";
		PreparedStatement ps = con.prepareStatement(add);
		ps.setString(1, add1.getUsername());
		ps.setString(2, add1.getEmail());

		ps.setString(3, add1.getPassword());

		int rows = ps.executeUpdate();
		System.out.println(rows + " rows inserted");
	}

	public static String checkPassword(String username) throws ClassNotFoundException, SQLException {
		String password = null;
		Connection connection = MovieConnection.getConnection();
		String select = "select password from users where user_name=?";
		PreparedStatement prepareStatement = connection.prepareStatement(select);
		prepareStatement.setString(1, username);
		ResultSet resultSet = prepareStatement.executeQuery();
		while (resultSet.next()) {
			password = resultSet.getString(1);
		}
		System.out.println(resultSet + " retrieved");
		return password;
	}
	public List<MoviePojo> retriveDetails() throws ClassNotFoundException, SQLException 
    {
        ArrayList<MoviePojo> list=new ArrayList<>();
        Connection connection=MovieConnection.getConnection();
        String select="select user_name,email,password from users";
        PreparedStatement prepareStatement=connection.prepareStatement(select);
        ResultSet resultSet=prepareStatement.executeQuery();
        while(resultSet.next())
        {
            String username=resultSet.getString(1);
            String email=resultSet.getString(2);
            String password=resultSet.getString(3);
            MoviePojo details=new MoviePojo();
            details.setUsername(username);
            details.setEmail(email);
            details.setPassword(password);

            list.add(details);
        }
        connection.close();
        return list;
    }

	
	public void DeleteEmployee(String username) throws ClassNotFoundException, SQLException {
	    Connection connection =  MovieConnection.getConnection();
	    System.out.println(username);
	    String delete="delete from users where user_name=?";
	    PreparedStatement preparedStatement = connection.prepareStatement(delete);
	    preparedStatement.setString(1,username);
	    int rows = preparedStatement.executeUpdate();
	    System.out.println(rows+" deleted");

	}
	@Override
	public void DeleteEmployee() throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		
	}
	public void Update(String username,String email) throws ClassNotFoundException, SQLException {
	    
	    Connection connection = MovieConnection.getConnection();
	    String save="UPDATE users SET email=? WHERE user_name=?";
	    PreparedStatement prepareStatement = connection.prepareStatement(save);
	    prepareStatement.setString(1, email);
	    prepareStatement.setString(2, username);
	    int rows = prepareStatement.executeUpdate();
	    System.out.println(rows+" updated");

	}
	public void booking(Bookpojo add1) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Connection con = MovieConnection.getConnection();
		String add = "insert into bookings(user_name,seats,seat_count,screen,movie,booking_date,booking_time,theater)values(?,?,?,?,?,?,?,?)";
		System.out.println(add1.getScreen());
		System.out.println(add1.getSeat());
		PreparedStatement ps = con.prepareStatement(add);
		ps.setString(1, add1.getUsername());
		ps.setString(2, add1.getSeat());
		ps.setString(3, add1.getSeatcount());
		ps.setString(4, add1.getScreen());
		ps.setString(5, add1.getMovie());
		ps.setString(6, add1.getShowDate());
		ps.setString(7, add1.getShowtime());
		ps.setString(8, add1.getTheater());
		int rows = ps.executeUpdate();
		System.out.println(rows + " rows inserted");
	}
	@Override
	public void Update() throws ClassNotFoundException, SQLException {	
	}
//	public void update(String username,String password) throws ClassNotFoundException, SQLException {
//		Connection con = MovieConnection.getConnection();
//		String update = "UPDATE users SET password = ? WHERE user_name = ?";
//		PreparedStatement ps = con.prepareStatement(update);
//	    ps.setString(1, username);
//	   ps.setString(2, password);
//	    int rows = ps.executeUpdate();
//
//		System.out.println(rows + " rows updated");
//
//		ps.close();
//	}

}
