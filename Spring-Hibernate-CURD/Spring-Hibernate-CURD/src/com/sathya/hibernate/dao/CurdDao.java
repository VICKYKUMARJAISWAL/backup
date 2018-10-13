package com.sathya.hibernate.dao;

import java.util.List;

import com.sathya.hibernate.model.Product;

public interface CurdDao {

	void insertProdect(Product product);
	List selectProduct();
	void updateProdect(Product product);
	void deleteProdect(Product product);
}
