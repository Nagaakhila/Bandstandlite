package com.spring.dao;

import java.util.List;


import org.springframework.stereotype.Repository;

import com.spring.model.Category;
import com.spring.model.Supplier;



@Repository
public interface SupplierDAO {

	public boolean saveSupplier(Supplier supplier);
	
	public  List<Supplier> list() ;
	public Supplier getSupplierById(int id);
	
	public Supplier removeSupplierById(int id);


	
	
}