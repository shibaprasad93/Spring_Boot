package com.user.reg.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.user.reg.constant.BookConstant;
import com.user.reg.entity.model.AuthorModel;
import com.user.reg.entity.model.BookModel;
import com.user.reg.exception.BookWebAppException;
import com.user.reg.properties.ApplicationProperties;
import com.user.reg.service.BookService;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;
	
	@Autowired
	private ApplicationProperties props;
	@RequestMapping(value = "/go", method = RequestMethod.GET)
	public String displayForm(Model model) {
		BookModel bookModel = new BookModel();
		model.addAttribute("bookModel", bookModel);
		formValue(model);
		return "book";
	}
	
	@RequestMapping(value="/book" , method=RequestMethod.POST)
	public String bookId(@ModelAttribute("bookModel") BookModel bookModel, Model model )
	{
		try {
	   Long bookId=bookService.saveBookId(bookModel);
	   System.out.println("The BookId is : " + bookId);
	   Map<String,String> map = props.getBookprops();
	   if(bookId>0 && bookId!=null) {
	   model.addAttribute(BookConstant.SUCCESS,map.get(BookConstant.BOOKAPPSUCCESS));
	}
	else {
	   model.addAttribute(BookConstant.FAILURE , map.get(BookConstant.BOOKAPPFAILURE));
	}
	   formValue(model);
	   model.addAttribute("bookModel", new BookModel());
		}
		catch(Exception e) {
			throw new BookWebAppException(e.getMessage());
		}
	   return "book";
	}
	

	public void formValue(Model model) {
		
		
		AuthorModel authorModel=new AuthorModel();
		List<String> authorName=bookService.getallauthorName(authorModel);
		model.addAttribute("authorName", authorName);
	}
	
	@RequestMapping(value="/bookDetails", method=RequestMethod.GET)
	public String checkBook(Model model)
	{
		List<BookModel> models=bookService.findAllEntity();
		model.addAttribute("models",models);
		return "bookDetails";
	}

}
