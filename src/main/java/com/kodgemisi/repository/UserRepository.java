package com.kodgemisi.repository;

import org.springframework.data.repository.CrudRepository;

import com.kodgemisi.model.User;

public interface UserRepository extends CrudRepository<User, Long>{

}
