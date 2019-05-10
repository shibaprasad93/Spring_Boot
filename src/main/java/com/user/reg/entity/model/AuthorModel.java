package com.user.reg.entity.model;

import java.util.Set;

import lombok.Data;
@Data
public class AuthorModel {
	private Long authorId;
	private String authorName;
    private Set<Book> books;
	public Long getAuthorId() {
		return authorId;
	}
	public void setAuthorId(Long authorId) {
		this.authorId = authorId;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public Set<Book> getBooks() {
		return books;
	}
	public void setBooks(Set<Book> books) {
		this.books = books;
	}
    


}
