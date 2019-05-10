package com.user.reg.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.user.reg.entity.model.Author;
@Repository
public interface AuthorRepository extends JpaRepository<Author, Long> {

}
