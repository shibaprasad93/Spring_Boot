package com.user.reg.service;

import com.user.reg.entity.model.User;
import com.user.reg.model.LoginModel;
import com.user.reg.model.RegistrationModel;

public interface UserService {
	public boolean save(RegistrationModel rmodel);

   public String findByUsername(LoginModel login);

}
