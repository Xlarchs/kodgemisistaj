package com.kodgemisi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "joblist")
public class Job {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long id;

	@Column(name = "job_title")
	private String title;

	@Column(name = "job_description")
	private String description;

	@Column(name = "number_of_people_to_hire")
	private String numberOfPeopleToHire;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getNumberOfPeopleToHire() {
		return numberOfPeopleToHire;
	}

	public void setNumberOfPeopleToHire(String numberOfPeopleToHire) {
		this.numberOfPeopleToHire = numberOfPeopleToHire;
	}

}
