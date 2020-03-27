package com.kodgemisi.service;

import java.util.List;

import com.kodgemisi.model.Job;

public interface JobService {

	public List<Job> getAllJob();

	public Job getJobById(long id);

	public void saveOrUpdate(Job job);

	public void deleteJob(long id);

}
