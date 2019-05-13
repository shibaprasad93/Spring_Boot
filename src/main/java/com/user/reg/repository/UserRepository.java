package com.user.reg.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.user.reg.entity.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
	@Query(name = "from User where username=:username and password=:password")
	public User findByUsernameAndPassword(String username,String password);
	

}
