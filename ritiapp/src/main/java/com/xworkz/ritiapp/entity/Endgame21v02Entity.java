package com.xworkz.ritiapp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="Endgame21v02")
@NamedQueries({
	@NamedQuery(name="getByEmailId",query="SELECT ent from Endgame21v02Entity ent where ent.email=:emailID")
})
public class Endgame21v02Entity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(name="FULL_NAME")
	private String fullName;
	@Column(name="EMAIL_ID")
	private String email;
	@Column(name="DOB")
	private String dateOfBirth;
	@Column(name="ADDRESS")
	private String address;
	@Column(name="CONTACT")
	private long contactNo;
	@Column(name="GENDER")
	private String gender;
	@Column(name="PASSWORD")
	private String password;
	@Column(name="REGISTEREDBY")
	private String registeredBy;
	@Column(name="REGISTERED_DATE")
	private String registeredDate;
}
