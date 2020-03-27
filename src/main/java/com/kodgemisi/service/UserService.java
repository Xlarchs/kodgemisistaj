package com.kodgemisi.service;

import java.util.List;

import com.kodgemisi.model.User;

public interface UserService {
	public List<User> getAllUsers();

	public User getUserById(long id);

	public void saveOrUpdate(User user);
}
