package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dao.SupplierDAO;
import com.spring.model.Supplier;
@Controller
public class SupplierController {

	
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value = { "supplier"})
	public String getSupplierPage(@ModelAttribute("supplier") Supplier supplier,BindingResult result,Model model) {
		model.addAttribute("supplierList",supplierDAO.list());
		model.addAttribute("SupplierPageClicked", "true");
		return "index";
	}
	
	
	@RequestMapping(value = { "saveSupplier" }, method = RequestMethod.POST)
	public String insertSupplier(@ModelAttribute("supplier") Supplier supplier,RedirectAttributes attributes) {
		supplierDAO.saveSupplier(supplier);
		attributes.addFlashAttribute("SuccessMessage", "Supplier has been added Successfully");
		return "redirect:/supplier";
	}
	

	@RequestMapping("editsupplier/{id}")
	public String editSupplier(@PathVariable("id") int id, Model model,RedirectAttributes attributes) {
		System.out.println("editSupplier");
		attributes.addFlashAttribute("supplier", this.supplierDAO.getSupplierById(id));
		return "redirect:/supplier";
	}
	@RequestMapping(value = { "removesupplier/{id}"})
	public String removeCategory(@PathVariable("id") int id,RedirectAttributes attributes) throws Exception {
		supplierDAO.removeSupplierById(id);
		attributes.addFlashAttribute("DeleteMessage", "Category has been deleted Successfully");
		return "redirect:/supplier";
	}	
}
