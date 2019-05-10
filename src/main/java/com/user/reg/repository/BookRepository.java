package com.user.reg.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.user.reg.entity.model.Book;


@Repository
public interface BookRepository extends JpaRepository<Book, Long> {
	Book findByBookName(String bookName);

}
