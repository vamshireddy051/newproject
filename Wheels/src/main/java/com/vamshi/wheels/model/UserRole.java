package com.vamshi.wheels.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UserRole {
     @Id
	public int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String authority;
	
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
}
