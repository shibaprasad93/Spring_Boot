package com.user.reg.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.reg.entity.model.User;
import com.user.reg.model.LoginModel;
import com.user.reg.model.RegistrationModel;
import com.user.reg.repository.UserRepository;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;

	@Override
	public boolean save(RegistrationModel rmodel) {
		User user=new User();
		BeanUtils.copyProperties(rmodel, user);
		
		if (user != null) {
			user=userRepository.save(user);
			
		}
		if (user !=null) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public String findByUsername(LoginModel login) {
		User user=new User();
		BeanUtils.copyProperties(login, user);
		// TODO Auto-generated method stub
	user=	userRepository.findByUsernameAndPassword(user.getUsername(),user.getPassword());
	if(user != null) {
		if (user.getUsername().equals(login.getUsername()) && user.getPassword().equals(login.getPassword())) {
			return "valid creadentials";
		}
		
	}
		return "user not present creadentials";
	
	}

	

	}
