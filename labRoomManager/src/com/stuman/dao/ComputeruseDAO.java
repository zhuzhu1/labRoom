package com.stuman.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Admin;

public interface ComputeruseDAO {
	List getComputerUse();
	
}
