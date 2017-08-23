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

import com.spring.dao.CategoryDAO;
import com.spring.model.Category;



@Controller
public class CategoryController {

	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping(value = { "category"})
	public String CategoryPage(@ModelAttribute("category") Category category,BindingResult result,Model model) {
		//model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("CategoryPageClicked", "true");
		return "index";
	}
	@RequestMapping(value = { "saveCategory" }, method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category,RedirectAttributes attributes) {
		categoryDAO.saveCategory(category);
		attributes.addFlashAttribute("SuccessMessage", "Category has been added/Updated Successfully");
		return "redirect:/category";
	}
	
	@RequestMapping("editcategory/{id}")
	public String editCategory(@PathVariable("id") int id, Model model,RedirectAttributes attributes) {
		System.out.println("editCategory");
		attributes.addFlashAttribute("category", this.categoryDAO.getCategoryById(id));
		return "redirect:/category";
	}
	@RequestMapping(value = { "removecategory/{id}"})
	public String removeCategory(@PathVariable("id") int id,RedirectAttributes attributes) throws Exception {
		categoryDAO.removeCategoryById(id);
		attributes.addFlashAttribute("DeleteMessage", "Category has been deleted Successfully");
		return "redirect:/category";
	}
}
