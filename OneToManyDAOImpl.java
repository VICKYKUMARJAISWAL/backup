package com.sathya.hibernate.DAO;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sathya.hibernate.model.Customer;
import com.sathya.hibernate.model.Item;
import com.sathya.hibernate.util.HibernateUtils;
public class OneToManyDAOImpl implements OneToManyDAO {

	@Override
	public void saveCustomerWithItems() {
		//customer object
		Customer customer=new Customer();
		
		
		customer.setCustomerId(111);
		customer.setCustomerName("Raj");
		customer.setCustomerAddress("Hyd");
		// item object
		Item item1=new Item();
		
		item1.setItemId(901);
		item1.setItemName("copy");
		item1.setItemprice(400);
		//item object2
		Item item2=new Item();
		
		item2.setItemId(902);
		item2.setItemName("pen1");
		item2.setItemprice(500);
		
		Set items=new HashSet();
		items.add(item1);
		items.add(item2);
		//set collection object to customer object
		customer.setItems(items);
 
		//customer.setItems(items);
		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		session.save(customer);
		t.commit();
		session.close();
		factory.close();
	}
}