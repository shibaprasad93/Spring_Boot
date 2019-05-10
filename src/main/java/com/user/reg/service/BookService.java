package com.user.reg.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.user.reg.entity.model.AuthorModel;
import com.user.reg.entity.model.BookModel;

@Service
public interface BookService {
	
	public Long saveBookId(BookModel bookModel);
	public List<BookModel> findAllEntity();
	public List<String> getallauthorName(AuthorModel authorModel);
}
