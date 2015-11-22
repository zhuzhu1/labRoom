package com.stuman.dao;

import java.sql.SQLException;
import java.util.List;

import com.stuman.domain.Computer;


public interface ComputerDAO {
	boolean updateComputer(Computer computer);
	
	Computer getComnputerByIP(String ip);
}
