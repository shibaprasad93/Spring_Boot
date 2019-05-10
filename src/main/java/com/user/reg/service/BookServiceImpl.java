package com.user.reg.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.reg.entity.model.Author;
import com.user.reg.entity.model.AuthorModel;
import com.user.reg.entity.model.Book;
import com.user.reg.entity.model.BookModel;
import com.user.reg.repository.AuthorRepository;
import com.user.reg.repository.BookRepository;

@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookRepository bookRepository;
	@Autowired
	private AuthorRepository authorRepository;
	@Override
	public Long saveBookId(BookModel bookModel) {
		 Book entity = new Book();
			BeanUtils.copyProperties(bookModel, entity);
			try {
				byte[] photo = bookModel.getImage().getBytes();
				entity.setImage(photo);;
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			entity = bookRepository.save(entity);
			System.out.println(entity.getBookName());
			return entity.getBookId();
			
			
		}
	
	@Override
	public List<BookModel> findAllEntity() {
		List<Book> entities = bookRepository.findAll();
		List<BookModel> models = new ArrayList<>();
		if(!entities.isEmpty()) {
		for (Book book : entities) {
			BookModel model = new BookModel();
			BeanUtils.copyProperties(book, model);
			models.add(model);
		}
		}

		return models;
	}
	@Override
	public List<String> getallauthorName(AuthorModel authorModel) {
		List<Author> entities = authorRepository.findAll();
		List<String> authorName = new ArrayList<String>();

		if (!entities.isEmpty()) {
			for (Author entity : entities) {
				
				String author=entity.getAuthorName();
				authorName.add(author);
			}
		}
		return authorName;
	}
	

	
}
