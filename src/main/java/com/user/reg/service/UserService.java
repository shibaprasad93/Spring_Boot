package com.user.reg.service;

import com.user.reg.entity.model.User;

public interface UserService {
	void save(User user);

    User findByUsername(String username);

}
