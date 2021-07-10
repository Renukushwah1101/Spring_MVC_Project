package org.renu.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

public class User {

	@Size(min =5, max =10, message="Enter name b/w 5 to 10")
	private String name;
	private String visited[];
	private String country;
	@Email
	private String introduction;

	private String gender;

	
	public String[] getVisited() {
		return visited;
	}

	public void setVisited(String[] visited) {
		this.visited = visited;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "User [country=" + country + ", name=" + name + ", gender=" + gender + "]";
	}

	

}
