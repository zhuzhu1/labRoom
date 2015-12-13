package com.stuman.dao;

import java.sql.SQLException;
import java.util.List;

import com.stuman.domain.Computer;


public interface ComputerDAO {
	boolean updateComputer(String strId,String ip);
	boolean exitFun(String stuno,String ip);
	Computer getComnputerByIP(String ip);
}
