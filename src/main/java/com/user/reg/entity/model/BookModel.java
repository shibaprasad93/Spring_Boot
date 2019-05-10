package com.user.reg.entity.model;

import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BookModel {
	
	private Long bookId;
	private String bookName;
	private Double price;
	private String publication;
	@DateTimeFormat(pattern="dd/mm/yyyy")
	private Date publicationDate;
	private MultipartFile image;
	private Set<Author> authors;
	public Long getBookId() {
		return bookId;
	}
	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getPublication() {
		return publication;
	}
	public void setPublication(String publication) {
		this.publication = publication;
	}
	public Date getPublicationDate() {
		return publicationDate;
	}
	public void setPublicationDate(Date publicationDate) {
		this.publicationDate = publicationDate;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public Set<Author> getAuthors() {
		return authors;
	}
	public void setAuthors(String authors) {
		this.authors =new HashSet(Arrays.asList(authors.split(",")));
	}
	
	

}
