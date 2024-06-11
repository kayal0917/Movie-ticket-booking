package com.chainsys.model;

import java.util.Date;

public class Bookpojo {
	String username;
	String movie;
    int ticketno;
    String showtime;
    String theater;
    String screen;
    String seat;
    String showDate;
	String location;
    public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
    public String getSeatcount() {
		return seatcount;
	}
	public void setSeatcount(String seatcount) {
		this.seatcount = seatcount;
	}
	String seatcount;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMovie() {
		return movie;
	}
	public void setMovie(String movie) {
		this.movie = movie;
	}
	public int getTicketno() {
		return ticketno;
	}
	public void setTicketno(int ticketno) {
		this.ticketno = ticketno;
	}

	public String getShowtime() {
		return showtime;
	}
	public void setShowtime(String showtime) {
		this.showtime = showtime;
	}
	public String getTheater() {
		return theater;
	}
	public void setTheater(String theater) {
		this.theater = theater;
	}
	public String getScreen() {
		return screen;
	}
	public void setScreen(String screen) {
		this.screen = screen;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	
	public String getShowDate() {
		return showDate;
	}
	public void setShowDate(String showDate) {
		this.showDate = showDate;
	}


	
}
