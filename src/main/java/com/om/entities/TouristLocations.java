package com.om.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "TouristLocations")
public class TouristLocations {

	@Id
	@Column(name = "LocationID")
	private int LocationID;
	private String LocationName;
	private String City;
	private String Country;
	private String Description;
	private String AverageRating;
	public int getLocationID() {
		return LocationID;
	}
	public void setLocationID(int locationID) {
		LocationID = locationID;
	}
	public String getLocationName() {
		return LocationName;
	}
	public void setLocatioName(String locatioName) {
		LocationName = locatioName;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getAverageRating() {
		return AverageRating;
	}
	public void setAverageRating(String averageRating) {
		AverageRating = averageRating;
	}
	
	
	
}
