package com.chainsys.dao;

import java.sql.SQLException;
import java.util.List;

import com.chainsys.model.MoviePojo;

public interface InterMovie {
	public void Signupsevlet(MoviePojo add1) throws ClassNotFoundException, SQLException ;
	public List<MoviePojo> retriveDetails() throws ClassNotFoundException, SQLException;
    public void DeleteEmployee()throws ClassNotFoundException, SQLException;
    public void Update()throws ClassNotFoundException, SQLException;


}
