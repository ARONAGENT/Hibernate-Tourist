package com.rohan.hibernate.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="traveltourist")
public class TouristLocations {
	@Id
	@Column(name="locationid")
	 private int locationid;
	
	@Column(name="locationname")
	 private String locationname;
	
	@Column(name="city")
	 private String city; 
	
	@Column(name="country")
	 private String country;
	
	@Column(name="description")
	 private String description;
	
	@Column(name="averagerating")
	 private float averagerating;
	
	
	public int getLocationid() {
		return locationid;
	}
	public String getLocationname() {
		return locationname;
	}
	public String getCity() {
		return city;
	}
	public String getCountry() {
		return country;
	}
	public String getDescription() {
		return description;
	}
	public float getAveragerating() {
		return averagerating;
	}
	public void setLocationid(int locationid) {
		this.locationid = locationid;
	}
	public void setLocationname(String locationname) {
		this.locationname = locationname;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setAveragerating(float averagerating) {
		this.averagerating = averagerating;
	} 

	 
	




}
