package com.kodgemisi.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kodgemisi.model.Job;
import com.kodgemisi.repository.JobRepository;

@Service
@Transactional
public class JobServiceImpl implements JobService {

	@Autowired
	JobRepository jobRepository;

	@Override
	public List<Job> getAllJob() {
		return (List<Job>) jobRepository.findAll();
	}

	@Override
	public Job getJobById(long id) {
		return jobRepository.findById(id).get();
	}

	@Override
	public void saveOrUpdate(Job job) {
		jobRepository.save(job);
	}

	@Override
	public void deleteJob(long id) {
		jobRepository.deleteById(id);
	}

}
