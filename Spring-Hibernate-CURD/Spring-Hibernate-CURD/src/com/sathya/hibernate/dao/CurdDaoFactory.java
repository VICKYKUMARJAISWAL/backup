package com.sathya.hibernate.dao;

public class CurdDaoFactory {

	public static CurdDao getInstance()
	{
		return new CurdDaoImpl();
	}
}
