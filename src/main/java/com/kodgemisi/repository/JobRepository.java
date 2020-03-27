package com.kodgemisi.repository;

import org.springframework.data.repository.CrudRepository;

import com.kodgemisi.model.Job;

public interface JobRepository extends CrudRepository<Job, Long> {

}
