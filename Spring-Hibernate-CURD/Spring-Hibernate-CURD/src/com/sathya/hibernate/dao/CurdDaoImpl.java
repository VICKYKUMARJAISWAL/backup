package com.sathya.hibernate.dao;

import java.util.List;


import com.sathya.hibernate.model.Product;

public class CurdDaoImpl implements CurdDao 
{
	private static SessionFactory factory;
	static
	{
		factory=new Configuration().configure("com/sathya/hibernate/config/hibernate.cfg.xml").buildSessionFactory();
	}
	
	@Override
	public void insertProdect(Product product) 
	{
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(product);
		tx.commit();
		session.close();
	}

	@Override
	public List selectProduct() {
		Session session=factory.openSession();
		Query query=session.createQuery("from Product p");
		List list=query.list();
		session.close();
		return list;
	}

	@Override
	public void updateProdect(Product product) 
	{
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		session.update(product);
		tx.commit();
		session.close();
	}
	@Override
	public void deleteProdect(Product product) 
	{
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		session.delete(product);
		tx.commit();
		session.close();
	}
}
