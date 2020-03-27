package com.kodgemisi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kodgemisi.model.User;
import com.kodgemisi.repository.UserRepository;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;

	@Override
	public List<User> getAllUsers() {
		return (List<User>) userRepository.findAll();

	}

	@Override
	public User getUserById(long id) {
		return userRepository.findById(id).get();

	}

	@Override
	public void saveOrUpdate(User user) {
		userRepository.save(user);

	}

}
