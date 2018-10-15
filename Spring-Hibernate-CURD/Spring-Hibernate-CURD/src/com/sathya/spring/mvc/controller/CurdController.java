package com.sathya.spring.mvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sathya.hibernate.dao.CurdDao;
import com.sathya.hibernate.dao.CurdDaoFactory;
import com.sathya.hibernate.model.Product;

@Controller
public class CurdController {
	@RequestMapping(value="insert")
	public ModelAndView insert(@RequestParam int pid,@RequestParam String pname,@RequestParam double price)
	{
		Product product=new Product();
		product.setPid(pid);
		product.setPname(pname);
		product.setPrice(price);
		CurdDao dao=CurdDaoFactory.getInstance();
		dao.insertProdect(product);
		List list=dao.selectProduct();
		return new ModelAndView("result","products",list);
	}
	@RequestMapping(value="edit")
	public ModelAndView edit(@RequestParam int pid,@RequestParam String pname,@RequestParam double price)
	{
		Product product=new Product();
		product.setPid(pid);
		product.setPname(pname);
		product.setPrice(price);
		CurdDao dao=CurdDaoFactory.getInstance();
		dao.updateProdect(product);
		List list=dao.selectProduct();
		return new ModelAndView("result","products",list);
	}
	@RequestMapping(value="delete")
	public ModelAndView delete(@RequestParam int pid)
	{
		Product product=new Product();
		product.setPid(pid);
		CurdDao dao=CurdDaoFactory.getInstance();
		dao.deleteProdect(product);
		List list=dao.selectProduct();
		return new ModelAndView("result","products",list);
	}

}
